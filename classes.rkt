#lang racket

;-----------------------------------------------------------------------
#| CLASSES: Uma linguagem orientada a objetos
 Autores: José Santos Sá Carvalho - 201665557C
          Júlia Almeida Valadares - 201765562AC


Projeto baseado no Capítulo 9 do livro "Essentials of Programming Languages" (EOPL),
3ra edição, e na linguagem IREF apresentada em aula.

;------------------------------------------------------------------------
; Expressed values e Denoted values
ExpVal = Int + Bool + Proc + Listof(ExpVal) + Obj
DenVal = Ref(ExpVal)

; Sintaxe abstrata:
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
     
; Exemplo 1
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

; Exemplo 2
class c1 extends object
  field i
  field j
  method initialize (x)
    begin
      set i = x;
      set j = -(0,x) 
    end
  method countup (d)
    begin
      set i = +(i,d);
      set j = -(j,d)
    end
  method getstate () list(i,j)
let t1 = 0
    t2 = 0
    o1 = new c1(3)
  in begin
       set t1 = send o1 getstate();
       send o1 countup(2);
       set t2 = send o1 getstate();
       list(t1,t2)
     end

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

; Função extend-env moddificada para CLASSES
(define (extend-env var value env)
  (lambda (svar)
    (if (list? var) ; Se a variável for uma lista, como quando tem vários fields (i j) em um objeto
        (if (memq svar var) (list-ref value (index-of var svar)) ; Se svar está na lista var, retira o valor da lista value na posição que o elemento svar está em var
            (apply-env env svar)) ; senão, aplica o ambiente-pai em svar para encontrar a variável no ambiente anterior
        (if (equal? svar var) (if (list? value) (car value) value) ; Se value é uma lista, como no caso em que um objeto tem vários fields (i j) e você quer encontrar somente i
            (apply-env env svar))))) ; senão, aplica o ambiente-pai em svar para encontrar a variável no ambiente anterior

(define (extend-env-rec name var body env)
  (lambda (svar)
    (if (equal? svar name)
        (newref (proc-val var body (extend-env-rec name var body env)))
        (apply-env env svar))))

(define (apply-env env var)
  (env var))

(define init-env empty-env)

;------------------------------------
; Função extend-env-with-self-and-super, retirada do livro Essentials of Programming Languages
(define (extend-env-with-self-and-super self super-name saved-env) ; função faz a ligação de %self e %super com um objeto e um nome de classe, respectivamente
  (lambda (svar)
    (case svar
            ((%self) self)
            ((%super) super-name)
            (else (apply-env saved-env svar)))))

;------------------------------------

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

; Tipo de dados class, que representa uma classe com um nome, um nome da classe superior, campos de dados, e um ambiente de métodos
(struct class (class-name super-name fields method-env)) 

; Tipo de dados object, que representa um objeto, que é uma instância de uma classe. Possui nome da classe e campos.
(struct object (class-name fields)) 

; Tipo de dados method, que representa um método. Possui variáveis, um corpo a ser executado quando o método é chamado,
; um nome da classe que possui o médoto, e campos de dados
(struct method (vars body super-name fields))

; new-object :: ClassName -> Obj
(define new-object      ; Cria um objeto da classe class-name
  (lambda (class-name)
    (object             ; Cria um objeto
      class-name        ; nome da classe
      (map
       (lambda (field-name) ; Campos de dados. cria uma nova referência na memória com o nome dos campos
         (newref field-name));(list 'uninitialized-field field-name)))
       (class-fields (lookup-class class-name)))))) ; Pega os campos da classe com o nome class-name, encontrada com lookup-class

; apply-method :: Method x Obj x ListOf(ExpVal) -> ExpVal
(define (apply-method m self args) ; Função que aplica o método m do objeto self com os argumentos args, e retorna o valor
  ;(lambda (m self args)
  (if (method? m) ; Checa se m é método
        (let ([vars (method-vars m)]                  ; Obtém as informações relevantes do método m
              [body (method-body m)]
              [super-name (method-super-name m)]
              [fields (method-fields m)])
          (value-of body (extend-env vars (map newref args) ; Obtém o valor do corpo do método no novo ambiente, criado com extend env, com a variável vars, e as referências na memória dos argumentos
                                        (extend-env-with-self-and-super ; Estende o ambiente com o objeto atual, e com a classe super-name que possui o método
                                         self super-name
                                         (extend-env fields (object-fields self) ; Estende o ambiente vazio com os campos de dados do objeto atual
                                                     empty-env)))))(display "m não é método\n")))



; ClassEnv = Listof(List(ClassName, Class))
;the-class-env :: ClassEnv
(define the-class-env '()) ;object object null)) ; Ambiente de classe vazio, que será inicializado pela função initialize-class-env! com as classes declaradas no programa

; add-to-class-env! :: ClassName x Class -> ???
(define add-to-class-env!     ; Adiciona a classe class de nome class-name no ambiente the-class-env
  (lambda (class-name class)
    (set! the-class-env       ; usando a função set! O ambiente the-class-env vai possuir listas com dois elementos, o primeiro sendo o
          (cons               ; nome da classe, o segundo a classe em si
           (list class-name class)
           the-class-env))))

; lookup-class :: ClassName -> Class
(define lookup-class    ; Procura e retorna (se existir) a classe de nome name no ambiente the-class-env
  (lambda (name)
    (let ((maybe-pair (assq name the-class-env)))
      (if maybe-pair (cadr maybe-pair)
          (display "Classe desconhecida\n")))))

; initialize-class-env! :: Listof(ClassDecl) -> ???
(define initialize-class-env! ; inicializa o ambiente de classes the-class-env com os objetos correspondentes às declarações de classe do programa
  (lambda (c-decls)
    (set! the-class-env
          (list
           (list 'object (class #f #f '() '())))) ; Inicializa o ambiente de classes com um objeto
    (for-each initialize-class-decl! c-decls))) ; para cada classe declarada no programa

; my initialize-class-decl!
(define initialize-class-decl! ; Inicializa o ambiente the-class-env com cada uma das classes declaradas no programa, passadas pela função initialize-class-env!
  (lambda (c-decl)
    (let ([c-name (cadr c-decl)] ; Obtém as informações relevantes da declaração de classes
          [s-name (car (caddr c-decl))]
          [f-names (cadr (caddr c-decl))]
          [m-decls (caddr (caddr c-decl))])
       (let ([f-names (append-field-names ; Obtém os nomes dos campos resultantes da concatenação dos campos da classe atual com os da superior
                            (class-fields (lookup-class s-name))
                            f-names)])
                      (add-to-class-env! ; Adiciona a classe com nome c-name e dados obtidos acima no ambiente the-class-env
                       c-name
                       (class c-name s-name f-names
                                (merge-method-envs ; Faz um merge no ambiente de métodos da classe atual com a superior
                                 (class-method-env (lookup-class s-name)) ; Obtém o ambiente de métodoss da classe superior
                                 (method-decls->method-env ; Obtém o ambiente de métodos declarado nesta declaração de classe
                                  m-decls s-name f-names))))))))


; fresh-identifier           
(define fresh-identifier ; Função para criar novo identificador ao "mergear" os campos de classes diferentes com métodos com mesmo nome
  (let ((sn 0))          ; Retirada do livro EOPL
    (lambda (identifier)  
      (set! sn (+ sn 1))
      (string->symbol
       (string-append
        (symbol->string identifier)
        "%"             ; % não pode aparecer em um identificador de input
        (number->string sn))))))

; append-field-names :: Listof(FieldName) x Listof(FieldName) -> Listof(FieldName)
(define append-field-names ; Concatena a lista de nomes de campos da classe superior com a atual
  (lambda (super-fields new-fields)
    (cond
      ((null? super-fields) new-fields) ; Se não houver campos na classe superior, retorna simplesmente os nomes de campos novos
      (else                             ; senão
       (cons
        (if (memq (car super-fields) new-fields) ; verifica se o primeiro campo da classe superior tem nome igual a um campo da classe atual
            (fresh-identifier (car super-fields)) ; Se sim cria um novo identificador para o primeiro da classe superior
            (car super-fields)) ; Se não, simplesmente o primeiro campo da classe superior
        (append-field-names    ; chama a função recursivamente com o resto (2:n) dos campos da classe superior com os novos campos
         (cdr super-fields) new-fields))))))

; MethodEnv = Listof(List(MethodName, Method))
; find-method :: Sym x Sym -> Method
(define find-method                ; encontra um método de nome name em uma classe c-name
  (lambda (c-name name)
    (let ([this-class (lookup-class c-name)])   ; primeiro procura a classe
      (if (void? this-class) (display "Classe não encontrada\n")
          (let ([m-env (class-method-env this-class)])    ; se encontrou a clase, pega o ambiente de métodos da classe
             (let ([maybe-pair (assq name m-env)])        ; encontra o par (nome_do_método, método) no ambiente de métodos da m-env
               (if (pair? maybe-pair) (cadr maybe-pair)   ; Se encontrou, retorna somente o método.
                   (display "Método não encontrado\n"))))))))

; method-decls->method-env :: Listof(MethodDecl) x ClassName x Listof(FieldName) -> MethodEnv
(define method-decls->method-env ; retorna o ambiente de métodos correspondente às declarações de métodos da classe que está sendo declarada no programa
  (lambda (m-decls super-name field-names)  ; m-decls: declaração de métodos, super-name: nome de class, field-names: nome dos campos da classe
    (map
     (lambda (m-decl)  ; para cada declaração de método, pega as informações relevantes do método (method-name, vars e body)
       (let ([method-name (cadr m-decl)] 
             [vars (caddr m-decl)]
             [body (cadddr m-decl)])
         (list method-name (method vars body super-name field-names)))) ; cria uma lista de dois elementos: o nome do método, e o método em si, como foi feito para as classes
     m-decls))) ; aplica a função em cada uma das declarações de método atuais

; merge-method-envs :: MethodEnv x MethodEnv -> MethodEnv     
(define merge-method-envs ; Função para juntar ambientes de métodos de duas classes
  (lambda (super-m-env new-m-env1) ; Simplesmente concatena (append) o novo ambiente com o antigo (da classe superior). Dessa maneira, os métodos da classe nova, que estende a superior
    (append new-m-env1 super-m-env))) ; ficam na frente. Quando a função find-method procura um método, vai pegar usando a função assq o primeiro da lista, ou seja, o da classe mais
                                     ; baixa na hierarquia (o mais novo). Dessa forma lida-se com duas classes com métodos de mesmo nome, uma das quais estende a outra.
; maybe :: 
(define maybe  ; Função auxiliar maybe
  (lambda (pred)
    (lambda (v)
      (or (not v) (pred v)))))


;------------------------------------------------------------------------------------------------------------------------------------------------
; Comportamento das expressões
(define (value-of exp Δ)
  (if (list? exp) ;(and (list? exp) (not (equal? (length exp) 1))) ; checa se exp é lista. senão, é número ou identificador
      (let
          ([type (car exp)])
      ; ----------- Retirado do IREF: ------------
        (cond [(equal? type 'lit) (cadr exp)]
              ; call-by-value e call-by-reference
              [(equal? type 'var) (deref (apply-env Δ (cadr exp)))]
              ; call-by-name
              ;[(equal? type 'var) (define v (cadr exp))
              ;                    (if (thunk? v) (value-of (thunk-exp v) (thunk-env v))
              ;                        (deref (apply-env Δ v)))]
              [(equal? type 'dif) (- (value-of (cadr exp) Δ) (value-of (caddr exp) Δ))]
              [(equal? type 'add) (+ (value-of (cadr exp) Δ) (value-of (caddr exp) Δ))]
              [(equal? type 'zero?) (= (value-of (cadr exp) Δ) 0)]
              [(equal? type 'let) (value-of (cadddr exp) (extend-env (cadr exp) (newref (value-of (caddr exp) Δ)) Δ))]
              [(equal? type 'if) (if (value-of (cadr exp) Δ)
                                     (value-of (caddr exp) Δ) (value-of (cadddr exp) Δ))]
              [(equal? type 'proc) (proc-val (cadr exp) (caddr exp) Δ)]
        
              [(equal? type 'letrec) (value-of (car (cddddr exp)) (extend-env-rec (cadr exp) (caddr exp) (cadddr exp) Δ))]

              [(equal? type 'set) (let ([v (value-of (caddr exp) Δ)])
                                    (let ([this-val (value-of (cadr exp) Δ)])
                                      (if (number? this-val) (setref! this-val v)
                                          (setref! (apply-env Δ this-val) v)))
                                    v)]
        
              [(equal? type 'begin) (foldl (lambda (e acc)
                                             (value-of e Δ))
                                           (value-of (cadr exp) Δ)
                                           (cddr exp))]
        
              ; ------------ Implementações da linguagem CLASSES: ------------
              [(equal? type 'list) (list (value-of (cadr exp) Δ) (value-of (caddr exp) Δ))] ; lista de dois elementos
              [(equal? type 'self) (apply-env Δ '%self)] ; aplica o ambiente na classe '%self
              
              [(equal? type 'send) (let ([args (values-of-exps (cadddr exp) Δ)] ; send retira os argumentos e o objeto
                                         [obj (value-of (cadr exp) Δ)])
                                     (apply-method                              ; e em seguida aplica o método (caddr exp) no objeto obj com os argumentos args
                                      (find-method (object-class-name obj) (caddr exp))
                                      obj
                                      args))]
              [(equal? type 'super) (let ([args (values-of-exps (caddr exp) Δ)] ; super retira os argumentos e o objeto self
                                          [obj (apply-env Δ '%self)])
                                      (apply-method                             ; e acha o método (cadr exp) do objeto super
                                       (find-method (apply-env Δ '%super) (cadr exp))
                                       obj                                      ; com os argumentos args e o objeto obj
                                       args))]
              [(equal? type 'new) (let ([args (values-of-exps (caddr exp) Δ)]   ; new cria um novo objeto
                                        [obj (new-object (cadr exp))])          ; usando new-object
                                    (let ([this-meth (find-method (object-class-name obj) 'initialize)])   ; acha o método initialize do objeto obj
                                     ;((display (method? this-meth)) (display this-meth) (display "\n")
                                      (apply-method                                                        ; e aplica o método
                                       this-meth
                                       obj
                                       args))
                                    obj)] ; retornando obj
        
              ;---------------------------------------------------------------                      
              [else (error "operação não implementada")]))
      
      (if (number? exp) exp                          ; Se Expr -> Number            
          (if (equal? exp 'self) (apply-env Δ '%self) ; se for self
              (apply-env Δ exp)))))                   ; senão, é identificador

; Comportamento de uma lista de expressões, podendo ser vazia. Função auxiliar
(define values-of-exps
  (lambda (exps env)
    (map
     (lambda (exp) (value-of exp env))
     exps)))

; value-of-program :: Program -> ExpVal
(define value-of-program ; Função principal, chamada para avaliar o valor de um programa.
  (lambda (prog)
    (empty-store)        ; incializa o store
    (let ([class-decls (car prog)]   ; retira do programa a primeira parte, que são as declarações de classe
          [body (cadr prog)])        ; segunda parte, que é o corpo do programa
      (initialize-class-env! class-decls)   ; inicializa o ambiente de classes the-class-env com as classes declaradas
        (value-of body the-class-env))))  ; pega o valor do corpo do programa no ambiente de classes recém inicializado

;------------------------------------------------------------------------------------------------------------------------------------------------
; Exemplo 1: resultado = 33
(define t1 '(((class c1 (object () ((method initialize () 1)
                                   (method m1 () (send self m2()))
                                   (method m2 () 13))))
             (class c2 (c1 () ((method m1 () 22)
                              (method m2 () 23)
                              (method m3 () (super m1())))))
             (class c3 (c2 () ((method m1 () 32)
                              (method m2 () 33)))))
             (let o3 (new c3 ())
               (send (var o3) m3 ()))))

; Exemplo 2: resultado '((3 -3) (5 -5))
(define t2 '(((class c1 (object (i j) ((method initialize x (begin (set i (var x))
                                                                     (set (var j) (dif (lit 0) (var x)))))
                                       (method countup d (begin (set i (add (var i) (var d)))
                                                                  (set j (dif (var j) (var d)))))
                                       (method getstate () (list (var i) (var j)))))))
             (let tmp1 (lit 0)
               (let tmp2 (lit 0)
                 (let o1 (new c1(3))
                   (begin (set (var tmp1) (send (var o1) getstate()))
                          (send (var o1) countup (2))
                          (let tmp2 (send (var o1) getstate())
                            (list (var tmp1) (var tmp2)))
                          ))))))


; Valor dos exemplos
(value-of-program t1)
(value-of-program t2)

; Debugging do programa:
;(#(struct:method m1 (() (32)) c2 ()) #(struct:method m2 (() (33)) c2 ()) #(struct:method m1 (() (22)) c1 ()) #(struct:method m2 (() (23)) c1 ()) #(struct:method m3 (() (super m1 ())) c1 ()) #(struct:method initialize (() 1) object ()) #(struct:method m1 (() (send self m2 ())) object ()) #(struct:method m2 (() (13)) object ()))
;#(struct:method () 1 object ())
;(vector? #(struct:method () 1 object ()) 0) ;#t
;(vector-ref #(struct:method () 1 object ()) 0)
;(vector-map method? #(struct:method () 1 object ()))