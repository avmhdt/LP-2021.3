#lang racket

;-----------------------------------------------------------------------
#| CLASSES: Uma linguagem orientada a objetos
 Autores: José Santos Sá Carvalho - 201665557C
          Júlia Almeida Valadares - 201765562AC


Projeto baseado no Capítulo 9 do livro "Essentials of Programming Languages",
3ra edição, e na linguagem IREF apresentada em aula.

;------------------------------------------------------------------------
; Expressed values e Denoted values
ExpVal = Int + Bool + Proc + Listof(ExpVal) + Obj
DenVal = Ref(ExpVal)

; Sintaxe
Prog -> (ClassDecl* Expr)
ClassDecl -> (class Id Id Id* MethDecl*)
MethDecl -> (method Id Id*)
Expr -> (new Id Expr*)
     | (send Expr Id Expr*)
     | (super Id Expr*)
     | (self)
     | (lit Val)
     | (var Val)
     | (dif Expr Expr)
     | (zero? Expr)
     | (if Expr Expr Expr)
     | Id
     | (let Id Expr Expr)
     | (proc Id Expr)
     | (Expr, Expr)
     | (letrec Id Id Expr Expr)
     | (set Id Expr)
     | (begin Expr*)
     
; Exemplo
class c1 extends object
  method initialize ( ) 1
  method m1 ( ) send self m2 ( )
  method m2 ( ) 13
class c2 extends c1
  method m1 ( ) 22
  method m2 ( ) 23
  method m3 ( ) super m1 ( )
class c3 extends c2
  method m1 ( ) 32
  method m2 ( ) 33
let o3 = new c3 ( )
in send o3 m3( )

|#
;-------------------------------------------- Retirado do IREF: -----------------------------------------------
; Representando um estado como um par: próximo endereço e um vetor
(define TAM 100) ; tamanho da memória
(define σ (cons 0 (make-vector TAM)))

;empty-store
(define (empty-store) (set! σ (cons 0 (cdr σ))))

;newref :: ExpVal -> Ref
(define (newref v)
  (define addr (car σ))
  (define mem (cdr σ))
  (vector-set! mem addr v)
  (set! σ (cons (add1 addr) mem))
  addr)

; deref :: Ref -> ExpVal
(define (deref addr)
  (if (< addr (car σ))
         (vector-ref (cdr σ) addr)
         (error "invalid location")))
; setref! :: Ref x ExpVal -> ?
(define (setref! addr v)
  (if (< addr (car σ))
      (vector-set! (cdr σ) addr v)
      (error "invalid location")))

#|
; Environment
Env = Var -> Value

empty-env :: Env
extend-env :: Var x Value x Env -> Env
apply-env :: Env x Var -> Value
    
; Notação
  Δ => Environment
  [] => empty-env
  [var=val]Δ => (extend-env var val Δ)
  [var1=val1, var2=val2]Δ => abreviação para [var1=val1]([var2=val2]Δ)
  [var1=val1, var2=val2, ..., varn=valn] => abreviação para [var1=val1,...,varn=valn][]
  Δ⟦var⟧  => (apply-env Δ var)

  |[name = var / body]Δ| = (extend-env-rec name var body Δ) 
|#
(define empty-env
  (lambda (var)
    (error "No bind")))

(define (extend-env var value env)
  (lambda (svar)
    (if (equal? svar var) value
        (apply-env env svar))))

(define (extend-env-rec name var body env)
  (lambda (svar)
    (if (equal? svar name)
        (newref (proc-val var body (extend-env-rec name var body env)))
        (apply-env env svar))))

(define (apply-env env var)
  (env var))

(define init-env empty-env)

; call-by-value
; proc-val :: Var x Expr x Env -> Proc
#;(define (proc-val var exp Δ)
  (lambda (val)
    (value-of exp (extend-env var (newref val) Δ))))

; apply-proc :: Proc x ExpVal -> ExpVal  
#;(define (apply-proc proc val)
  (proc val))


; call-by-reference
(define (proc-val var exp Δ)
  (lambda (val flag)
    (if flag (value-of exp (extend-env var (newref val) Δ))
        (value-of exp (extend-env var val Δ)))))

(define (apply-proc proc val)
  (proc val #t))

(define (apply-proc-ref proc val)
  (proc val #f))

(struct thunk (env exp))

; -------------------------------- Implementação das estruturas e funções da linguagem CLASSES --------------------------------------
; Seguindo estratégia apresentada no Capítulo 9 do livro "Essentials of Programming Languages", 3ra edição.

(struct class (class-name super-name fields method-env)) ; Estrutura para representar as informações de uma CLASSE

#|
 ; Lista que vai cada elemento associa um nome de classe a seus atributos (incluindo o env)
(define classes-struct-list '() ) ;; Inicia lista com classe object
|#

(struct object (class-name fields)) ; Estrutura para representar as informações de um OBJETO

; (struct method (vars body super-name fields)) ; Estrutura para representar as informações de um METODO
(struct method (vars body super-name fields))

#|
; Tipo de dados objeto:
(struct object object?
  (an-object
    (class-name identifier?)
    (fields (list-of reference?))))
|#

; new-object :: ClassName -> Obj
(define new-object
  (lambda (class-name)
    (object
      class-name
      (map
       (lambda (field-name)
         (newref (list 'uninitialized-field field-name)))
       (class-fields (lookup-class class-name))))))

#|
; Tipo de dados método:
(define-struct method method?
  (a-method
   (vars (list-of identifier?))
   (body expression?)
   (super-name identifier?)
   (field-names (list-of identifier?))))
|#

; apply-method :: Method x Obj x ListOf(ExpVal) -> ExpVal
(define apply-method
  (lambda (m self args)
    (if method? m
        (let ([vars '(method->vars m)]
              [body '(method->body m)]
              [super-name '(method->super-name m)]
              [fields '(method->fields m)])
          (method (vars body super-name fields)
                  (value-of body
                            '(extend-env* vars (map newref args)
                                         (extend-env-with-self-and-super
                                          self super-name
                                          (extend-env field-names (object->fields self)
                                                      (empty-env))))))))))

; ClassEnv = Listof(List(ClassName, Class))
;the-class-env :: ClassEnv
(define the-class-env '()) ;object object null)) ; Ambiente de classe vazio com classe object

; add-to-class-env! :: ClassName x Class -> ???
(define add-to-class-env!
  (lambda (class-name class)
    (set! the-class-env
          (cons
           (list class-name class)
           the-class-env))))


; lookup-class :: ClassName -> Class
(define lookup-class
  (lambda (name)
    (let ((maybe-pair (assq name the-class-env)))
      (if maybe-pair (cadr maybe-pair)
          (display "Classe desconhecida\n")))))
#|
; lookup-class :: Name -> Class
(define (lookup-class n)
  (apply-env the-class-env n))
|#


#|
; Tipo de dados classe:
(struct class class?
  (a-class
   (super-name (maybe identifier?))
   (field-names (list-of identifier?))
   (method-env method-environment?)))
|#


; initialize-class-env! :: Listof(ClassDecl) -> ???
(define initialize-class-env!
  (lambda (c-decls)
    (set! the-class-env
          (list
           (list 'object (class #f #f '() '())))) ; Inicializa o ambiente de classes com um objeto
    (for-each initialize-class-decl! c-decls)))
#|
; initialize-class-decl! :: ClassDecl -> ???
(define initialize-class-decl!
  (lambda (c-decl)
     (let ([c-name (class-class-name (eval c-decl))]
           [s-name (class-super-name c-decl)]
           [f-names (class-fields c-decl)]
           [m-decls (class-method-env c-decl)])
       (let ([f-names (append-field-names
                            (class-fields (lookup-class s-name))
                            f-names)])
                      (add-to-class-env!
                       c-name
                       (class c-name s-name f-names
                                (merge-method-envs
                                 (class-method-env (lookup-class s-name))
                                 (method-decls->method-env
                                  m-decls s-name f-names))))))))

|#
;#|
; my initialize-class-decl!
(define initialize-class-decl!
  (lambda (c-decl)
    (let ([c-name (cadr c-decl)]
          [s-name (car (caddr c-decl))]
          [f-names (cadr (caddr c-decl))]
          [m-decls (caddr (caddr c-decl))])
       (let ([f-names (append-field-names
                            (class-fields (lookup-class s-name))
                            f-names)])
                      (add-to-class-env!
                       c-name
                       (class c-name s-name f-names
                                (merge-method-envs
                                 (class-method-env (lookup-class s-name))
                                 (method-decls->method-env
                                  m-decls s-name f-names))))))))
          ;[f-names 
;|#

#|
(define init-class
(lambda (decl)
  ;(display (cadr decl)) -- class-name
 ; (display (caddr decl)) ;-- super-clas-name
  ;(display (cdr (cadddr decl))) -- fields names
 ; (display  (cadddr (cdr decl))) ;-- methods namses
  
  '(let ([correct-fields '(append-fields (get-field-names (caddr decl)) (cdr (cadddr decl)))] ; Fields do Super e novos fields da classe
        [method-env (append (class-method-env '(get-class (caddr decl) classes-struct-list)) (create-methods-env (cadddr (cdr decl)) (caddr decl) (cdr (cadddr decl)) '())  ) ])
    (add-class (cadr decl) ( class (cadr decl) (caddr decl) correct-fields method-env )) )))

(define init-all-classes
  (lambda (classes-decls)
    '(add-to-class-env! 'object (class 'object 'object null null))
    (map init-class classes-decls))
 )
|#

; fresh-identifier           Função para criar novo identificador ao merge os campos de classes diferentes com métodos com mesmo nome
 (define fresh-identifier
    (let ((sn 0))
      (lambda (identifier)  
        (set! sn (+ sn 1))
        (string->symbol
          (string-append
            (symbol->string identifier)
            "%"             ; this can't appear in an input identifier
            (number->string sn))))))

; append-field-names :: Listof(FieldName) x Listof(FieldName) -> Listof(FieldName)
(define append-field-names
  (lambda (super-fields new-fields)
    (cond
      ((null? super-fields) new-fields)
      (else
       (cons
        (if (memq (car super-fields) new-fields)
            (fresh-identifier (car super-fields))
            (car super-fields))
        (append-field-names
         (cdr super-fields) new-fields))))))

; MethodEnv = Listof(List(MethodName, Method))
; find-method :: Sym x Sym -> Method
(define find-method
  (lambda (c-name name)
    (let ([this-class (lookup-class c-name)])
      (if (void? this-class) (display "Classe não encontrada\n")
          ((let ([m-env (class-method-env this-class)])
             (let ([maybe-pair (memq name 'm-env)])
               (if (pair? maybe-pair) (cadr maybe-pair)
                   (display "Método não encontrado\n")))))))))

; method-decls->method-env :: Listof(MethodDecl) x ClassName x Listof(FieldName) -> MethodEnv
(define method-decls->method-env
  (lambda (m-decls super-name field-names)
    (map
     (lambda (m-decl)
       (let ([method-name (car m-decl)]
             [vars (cadr m-decl)]
             [body (caddr m-decl)])
         (method vars body super-name field-names)))
     m-decls)))

; merge-method-envs :: MethodEnv x MethodEnv -> MethodEnv     Função para juntar ambientes de métodos de duas classes
(define merge-method-envs
  (lambda (super-m-env new-m-env)
    (append new-m-env super-m-env)))

; maybe :: 
(define maybe
  (lambda (pred)
    (lambda (v)
      (or (not v) (pred v)))))


;------------------------------------------------------------------------------------------------------------------------------------------------
; Comportamento das expressões
(define (value-of exp Δ)
  (define type (car exp))
  ; ----------- Retirado do IREF: ------------
  (cond [(equal? type 'lit) (cadr exp)]
        ; call-by-value e call-by-reference
        ;[(equal? type 'var) (deref (apply-env Δ (cadr exp)))]
        ; call-by-name
        [(equal? type 'var) (define v (cadr exp))
                            (if (thunk? v) (value-of (thunk-exp v) (thunk-env v))
                                (deref (apply-env Δ v)))]
        [(equal? type 'dif) (- (value-of (cadr exp) Δ) (value-of (caddr exp) Δ))]
        [(equal? type 'zero?) (= (value-of (cadr exp) Δ) 0)]
        [(equal? type 'let) (value-of (cadddr exp) (extend-env (cadr exp) (newref (value-of (caddr exp) Δ)) Δ))]
        [(equal? type 'if) (if (value-of (cadr exp) Δ)
                               (value-of (caddr exp) Δ) (value-of (cadddr exp) Δ))]
        [(equal? type 'proc) (proc-val (cadr exp) (caddr exp) Δ)]
        
        [(equal? type 'letrec) (value-of (car (cddddr exp)) (extend-env-rec (cadr exp) (caddr exp) (cadddr exp) Δ))]

        [(equal? type 'set) (let ([v (value-of (caddr exp) Δ)])
                              (setref! (apply-env Δ (cadr exp)) v)
                              v)]
        
        [(equal? type 'begin) (foldl (lambda (e acc)
                                       (value-of e Δ))
                                     (value-of (cadr exp) Δ)
                                     (cddr exp))]
        
        ; ----------- Implementações da linguagem CLASSES: ------------
        [(equal? type 'self) (apply-env Δ '%self)]
        [(equal? type 'send) (let ([args (value-of (caddr exp) Δ)]
                                   [obj (value-of (car exp) Δ)])
                               (apply-method
                                 (find-method '(object->class-name obj) (cadr exp))
                                  obj
                                  args))]
        [(equal? type 'super) (let ([args (value-of (cadr exp) Δ)]
                                    [obj (apply-env Δ '%self)])
                                (apply-method
                                 (find-method (apply-env Δ '%super) (car exp))
                                 obj
                                 args))]
        [(equal? type 'new) (let ([args (values-of-exps (caddr exp) Δ)]
                                  [obj (new-object (cadr exp))])
                              (apply-method
                               (find-method (object-class-name obj) 'initialize)
                               obj
                               args)
                              obj)]
        
        ;---------------------------------------------------------------                      
        [else (error "operação não implementada")]))

(define values-of-exps
  (lambda (exps env)
    (map
     (lambda (exp) (value-of exp env))
     exps)))


; Especificação do comportamento de programas
#|
(define (value-of-program prog)
  (empty-store)
  (value-of (cadr prog) init-env))
|#
; value-of-program :: Program -> ExpVal
(define value-of-program
  (lambda (prog)
    (empty-store)
    (let ([class-decls (car prog)]
          [body (cadr prog)])
      ((initialize-class-env! class-decls)
        (value-of body the-class-env)))))

;------------------------------------------------------------------------------------------------------------------------------------------------
(define exemplo '(
            (class classe1 object (fields a b)  (( method initialize()(v1 lit 1)) (method teste() (lit 2 )) ))
             (class classe2 classe1 (fields c d)  ((method initialize(5) (lit 5 ))))
             (class classe3 classe2 (fields d e f g)  ((method initialize() (lit 5 ))))
            ))

(define metodos '(( method initialize()(v1 lit 1)) (method teste() (lit 2 )) ))

;(define p2 '(class c1 object (fields x y) ((method m1 () (lit 1)))))

;(value-of-program p2)

;(init-all-classes exemplo)

(define t1 '(((class c1 (object () ((method initialize () 1)
                                   (method m1 () (send self m2()))
                                   (method m2 () (13)))))
             (class c2 (c1 () ((method m1 () (22))
                              (method m2 () (23))
                              (method m3 () (super m1())))))
             (class c3 (c2 () ((method m1 () (32))
                              (method m2 () (33))))))
             (let o3 (new c3 ())
               (send o3 (m3())))))
   
(value-of-program t1)


;(#(struct:method m1 (() (32)) c2 ()) #(struct:method m2 (() (33)) c2 ()) #(struct:method m1 (() (22)) c1 ()) #(struct:method m2 (() (23)) c1 ()) #(struct:method m3 (() (super m1 ())) c1 ()) #(struct:method initialize (() 1) object ()) #(struct:method m1 (() (send self m2 ())) object ()) #(struct:method m2 (() (13)) object ()))

