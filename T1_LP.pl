%% Trabalho 1 Linguagem de Programa��o 2021.3
% Autores:
% Jos� Santos S� Carvalho - 201665557C
% J�lia Almeida Valadares - 201765562AC
%

%% estudante
:- dynamic estudante/1.
estudante('joao').
estudante('lara').
estudante('amanda').
estudante('julia').
estudante('jose').
estudante('leo').
estudante('pedro').
estudante('gabriel').
estudante('monica').
estudante('andre').
estudante('paulo').
estudante('yuri').
estudante('carlos').
estudante('sara').
estudante('sofia').
estudante('maria').
estudante('clara').
estudante('saul').
estudante('vitor').
estudante('matheus').

% curso
:- dynamic curso/1.
curso('Ci�ncia da Computa��o').
curso('Sistemas de Informa��o').

:- dynamic estudanteCurso/2.
estudanteCurso('joao', 'Ci�ncia da Computa��o').
estudanteCurso('lara', 'Ci�ncia da Computa��o').
estudanteCurso('amanda', 'Ci�ncia da Computa��o').
estudanteCurso('julia', 'Ci�ncia da Computa��o').
estudanteCurso('jose', 'Ci�ncia da Computa��o').
estudanteCurso('leo', 'Ci�ncia da Computa��o').
estudanteCurso('pedro', 'Ci�ncia da Computa��o').
estudanteCurso('gabriel', 'Ci�ncia da Computa��o').
estudanteCurso('monica', 'Ci�ncia da Computa��o').
estudanteCurso('andre', 'Ci�ncia da Computa��o').
estudanteCurso('paulo', 'Sistemas de Informa��o').
estudanteCurso('yuri', 'Sistemas de Informa��o').
estudanteCurso('carlos', 'Sistemas de Informa��o').
estudanteCurso('sara', 'Sistemas de Informa��o').
estudanteCurso('sofia', 'Sistemas de Informa��o').
estudanteCurso('maria', 'Sistemas de Informa��o').
estudanteCurso('clara', 'Sistemas de Informa��o').
estudanteCurso('saul', 'Sistemas de Informa��o').
estudanteCurso('vitor', 'Sistemas de Informa��o').
estudanteCurso('matheus', 'Sistemas de Informa��o').

estudantes(X, Y) :- curso(X), estudante(Y), estudanteCurso(Y, X).
estudantesLista(X, Lista) :- bagof(Y, estudantes(X, Y), Lista).

% Sele��o por nota em disciplina ou IRA aqui

% disciplina
:- dynamic disciplina/1.
disciplina('Algoritmos').
disciplina('Geometria Anal�tica e Sis. Lineares').
disciplina('C�lculo I').
disciplina('Qu�mica Fundamental').
disciplina('Lab. Ci�ncias').
disciplina('Lab. de Programa��o').
disciplina('Lab. de Qu�mica').
disciplina('Int. a Ci�ncias Exatas').
disciplina('C�lculo II').
disciplina('Int. � Estat�stica').
disciplina('Lab. F�sica I').
disciplina('Estrutura de Dados').
disciplina('Lab. de Programa��o II').
disciplina('Lab. de Est. e Transf.').
disciplina('Lab de Ci�ncia da Comp.').
disciplina('C�lculo III').
disciplina('L�gica e Fundamentos da Comp.').
disciplina('Int. a Teoria dos N�meros').
disciplina('Teoria dos Grafos').
disciplina('Orienta��o a Objetos').
disciplina('Circuitos Digitais').
disciplina('�lgebra Linear').
disciplina('Equa��es Diferenciais I').
disciplina('C�lculo Num�rico').
disciplina('Estrutura de Dados 2').
disciplina('Modelagem de Sistemas').
disciplina('Organiza��o de Computadores').
disciplina('Computa��o Gr�fica').
disciplina('Intelig�ncia Artificial').
disciplina('C�lculo de Probabilidades I').
disciplina('Banco de Dados').
disciplina('Engenharia de Software').
disciplina('Sistemas Operacionais').
disciplina('Pesquisa Operacional').
disciplina('Linguagens Formais').
disciplina('Intera��o Humano-Computador').
disciplina('Inform�tica e Sociedade').
disciplina('Redes de Computadores').
disciplina('Sistemas Distribu�dos').
disciplina('Teoria da Computa��o').
disciplina('An�lise e Projeto de Algoritmos').
disciplina('Seguran�a em Sist. de Computa��o').
disciplina('Teoria dos Compiladores').
disciplina('Linguagem de Programa��o').
disciplina('F�sica I').
disciplina('F�sica II').
disciplina('Contabilidade Geral').
disciplina('Lab. de Programa��o Web').
disciplina('Princ�pios Gerais de Administra��o I').
disciplina('Aspectos Legais da Inform�tica').
disciplina('Aspectos Te�ricos da Computa��o').
disciplina('Lab. de Programa��o de Sistemas Web').
disciplina('Lab. de Programa��o de Sistemas Web II').
disciplina('Empreendimentos em Inform�tica').
disciplina('Ger�ncia de Projetos').
disciplina('Teste de Software').
disciplina('Aspectos Avan�ados de Eng. de Software').
disciplina('Aspectos Avan�ados de Banco de Dados').
disciplina('Aspectos Organizacionais de SI').
disciplina('Metodologia Cient�fica em Computa��o').
disciplina('Lab. de Prog. para Dispositivos M�veis').
disciplina('Sistema de Apoio � Decis�o').
disciplina('Seguran�a e Auditoria de Sistemas').
disciplina('Monografia Final em Computa��o').
disciplina('TCC em Sistemas de Informa��o').

:- dynamic disciplinaCurso/3.
disciplinaCurso('Algoritmos', 'Ci�ncia da Computa��o', 1).
disciplinaCurso('Algoritmos', 'Sistemas de Informa��o', 1).
disciplinaCurso('Contabilidade Geral', 'Sistemas de Informa��o', 4).

disciplinaCurso('Geometria Anal�tica e Sis. Lineares', 'Ci�ncia da Computa��o', 1).
disciplinaCurso('C�lculo I', 'Ci�ncia da Computa��o', 1).
disciplinaCurso('Qu�mica Fundamental', 'Ci�ncia da Computa��o', 1).
disciplinaCurso('Lab. Ci�ncias', 'Ci�ncia da Computa��o', 1).
disciplinaCurso('Lab. de Programa��o', 'Ci�ncia da Computa��o', 1).
disciplinaCurso('Lab. de Qu�mica', 'Ci�ncia da Computa��o', 1).
disciplinaCurso('Int. a Ci�ncias Exatas', 'Ci�ncia da Computa��o', 1).
disciplinaCurso('C�lculo II', 'Ci�ncia da Computa��o', 2).
disciplinaCurso('Int. � Estat�stica', 'Ci�ncia da Computa��o', 2).
disciplinaCurso('Lab. F�sica I', 'Ci�ncia da Computa��o', 2).
disciplinaCurso('Estrutura de Dados', 'Ci�ncia da Computa��o', 2).
disciplinaCurso('Lab. de Programa��o II', 'Ci�ncia da Computa��o', 2).
disciplinaCurso('Lab. de Est. e Transf.', 'Ci�ncia da Computa��o', 2).
disciplinaCurso('Lab de Ci�ncia da Comp.', 'Ci�ncia da Computa��o', 2).
disciplinaCurso('C�lculo III', 'Ci�ncia da Computa��o', 3).
disciplinaCurso('L�gica e Fundamentos da Comp.', 'Ci�ncia da Computa��o', 3).
disciplinaCurso('Int. a Teoria dos N�meros', 'Ci�ncia da Computa��o', 3).
disciplinaCurso('Teoria dos Grafos', 'Ci�ncia da Computa��o', 3).
disciplinaCurso('Orienta��o a Objetos', 'Ci�ncia da Computa��o', 3).
disciplinaCurso('Circuitos Digitais', 'Ci�ncia da Computa��o', 3).
disciplinaCurso('�lgebra Linear', 'Ci�ncia da Computa��o', 4).
disciplinaCurso('Equa��es Diferenciais I', 'Ci�ncia da Computa��o', 4).
disciplinaCurso('C�lculo Num�rico', 'Ci�ncia da Computa��o', 4).
disciplinaCurso('Estrutura de Dados 2', 'Ci�ncia da Computa��o', 4).
disciplinaCurso('Modelagem de Sistemas', 'Ci�ncia da Computa��o', 4).
disciplinaCurso('Organiza��o de Computadores', 'Ci�ncia da Computa��o', 4).
disciplinaCurso('Computa��o Gr�fica', 'Ci�ncia da Computa��o', 5).
disciplinaCurso('Intelig�ncia Artificial', 'Ci�ncia da Computa��o', 5).
disciplinaCurso('C�lculo de Probabilidades I', 'Ci�ncia da Computa��o', 5).
disciplinaCurso('Banco de Dados', 'Ci�ncia da Computa��o', 5).
disciplinaCurso('Engenharia de Software', 'Ci�ncia da Computa��o', 5).
disciplinaCurso('Sistemas Operacionais', 'Ci�ncia da Computa��o', 5).
disciplinaCurso('Pesquisa Operacional', 'Ci�ncia da Computa��o', 6).
disciplinaCurso('Linguagens Formais', 'Ci�ncia da Computa��o', 6).
disciplinaCurso('Intera��o Humano-Computador', 'Ci�ncia da Computa��o', 6).
disciplinaCurso('Inform�tica e Sociedade', 'Ci�ncia da Computa��o', 6).
disciplinaCurso('Redes de Computadores', 'Ci�ncia da Computa��o', 6).
disciplinaCurso('Sistemas Distribu�dos', 'Ci�ncia da Computa��o', 6).
disciplinaCurso('Teoria da Computa��o', 'Ci�ncia da Computa��o', 7).
disciplinaCurso('An�lise e Projeto de Algoritmos', 'Ci�ncia da Computa��o', 7).
disciplinaCurso('Seguran�a em Sist. de Computa��o', 'Ci�ncia da Computa��o', 7).
disciplinaCurso('Teoria dos Compiladores', 'Ci�ncia da Computa��o', 8).
disciplinaCurso('Linguagem de Programa��o', 'Ci�ncia da Computa��o', 8).
disciplinaCurso('Metodologia Cient�fica em Computa��o', 'Ci�ncia da Computa��o', 7).
disciplinaCurso('Monografia Final em Computa��o', 'Ci�ncia da Computa��o', 8).

disciplinaCurso('Geometria Anal�tica e Sis. Lineares', 'Sistemas de Informa��o', 1).
disciplinaCurso('C�lculo I', 'Sistemas de Informa��o', 1).
disciplinaCurso('Lab. de Programa��o', 'Sistemas de Informa��o', 1).
disciplinaCurso('C�lculo II','Sistemas de Informa��o' , 2).
disciplinaCurso('Estrutura de Dados','Sistemas de Informa��o' , 2).
disciplinaCurso('Lab. de Programa��o II', 'Sistemas de Informa��o', 2).
disciplinaCurso('L�gica e Fundamentos da Comp.', 'Sistemas de Informa��o', 1).
disciplinaCurso('Teoria dos Grafos', 'Sistemas de Informa��o', 3).
disciplinaCurso('Orienta��o a Objetos', 'Sistemas de Informa��o', 3).
disciplinaCurso('Estrutura de Dados 2', 'Sistemas de Informa��o', 4).
disciplinaCurso('Modelagem de Sistemas', 'Sistemas de Informa��o', 4).
disciplinaCurso('Organiza��o de Computadores', 'Sistemas de Informa��o', 4).
disciplinaCurso('Intelig�ncia Artificial', 'Sistemas de Informa��o', 5).
disciplinaCurso('C�lculo de Probabilidades I', 'Sistemas de Informa��o', 3).
disciplinaCurso('Banco de Dados', 'Sistemas de Informa��o', 5).
disciplinaCurso('Engenharia de Software', 'Sistemas de Informa��o', 5).
disciplinaCurso('Sistemas Operacionais', 'Sistemas de Informa��o', 5).
disciplinaCurso('Pesquisa Operacional','Sistemas de Informa��o' , 6).
disciplinaCurso('Intera��o Humano-Computador','Sistemas de Informa��o' , 6).
disciplinaCurso('Inform�tica e Sociedade', 'Sistemas de Informa��o', 3).
disciplinaCurso('Redes de Computadores', 'Sistemas de Informa��o', 6).
disciplinaCurso('Lab. de Programa��o Web', 'Sistemas de Informa��o', 5).
disciplinaCurso('Princ�pios Gerais de Administra��o I', 'Sistemas de Informa��o', 2).
disciplinaCurso('Aspectos Legais da Inform�tica', 'Sistemas de Informa��o', 2).
disciplinaCurso('Aspectos Te�ricos da Computa��o', 'Sistemas de Informa��o', 4).
disciplinaCurso('Lab. de Programa��o de Sistemas Web', 'Sistemas de Informa��o', 5).
disciplinaCurso('Lab. de Programa��o de Sistemas Web II', 'Sistemas de Informa��o', 6).
disciplinaCurso('Empreendimentos em Inform�tica', 'Sistemas de Informa��o', 6).
disciplinaCurso('Ger�ncia de Projetos', 'Sistemas de Informa��o', 7).
disciplinaCurso('Teste de Software', 'Sistemas de Informa��o', 7).
disciplinaCurso('Aspectos Avan�ados de Eng. de Software', 'Sistemas de Informa��o', 7).
disciplinaCurso('Aspectos Avan�ados de Banco de Dados', 'Sistemas de Informa��o', 7).
disciplinaCurso('Aspectos Organizacionais de SI', 'Sistemas de Informa��o', 7).
disciplinaCurso('Metodologia Cient�fica em Computa��o', 'Sistemas de Informa��o', 7).
disciplinaCurso('Lab. de Prog. para Dispositivos M�veis', 'Sistemas de Informa��o', 8).
disciplinaCurso('Sistema de Apoio � Decis�o', 'Sistemas de Informa��o', 8).
disciplinaCurso('Seguran�a e Auditoria de Sistemas', 'Sistemas de Informa��o', 8).
disciplinaCurso('TCC em Sistemas de Informa��o', 'Sistemas de Informa��o', 8).

cursosDisciplina(X, Y) :- disciplina(X), curso(Y), disciplinaCurso(X, Y, _).
cursosDisciplinaLista(X, Lista) :- bagof(Y, cursosDisciplina(X, Y), Lista).

listaDisciplinasCurso(Y, Lista) :- setof(X, disciplinaCurso(X, Y, _), Lista).

% nota
:- dynamic nota/3.
nota('joao', 'Algoritmos', 100).
nota('joao', 'Geometria Anal�tica e Sis. Lineares', 85).
nota('joao', 'C�lculo I', 75).
nota('joao', 'Qu�mica Fundamental', 74).
nota('joao', 'Lab. Ci�ncias', 86).
nota('joao', 'Lab. de Programa��o', 92).
nota('joao', 'Lab. de Qu�mica', 61).
nota('joao', 'Int. a Ci�ncias Exatas', 65).

nota('lara', 'Algoritmos', 76).
nota('lara', 'Geometria Anal�tica e Sis. Lineares', 87).
nota('lara', 'C�lculo I', 96).
nota('lara', 'Qu�mica Fundamental', 88).
nota('lara', 'Lab. Ci�ncias', 100).
nota('lara', 'Lab. de Programa��o', 64).
nota('lara', 'Lab. de Qu�mica', 77).
nota('lara', 'Int. a Ci�ncias Exatas', 78).

nota('amanda', 'Algoritmos', 100).
nota('amanda', 'Geometria Anal�tica e Sis. Lineares', 97).
nota('amanda', 'C�lculo I', 68).
nota('amanda', 'Qu�mica Fundamental', 36).
nota('amanda', 'Lab. Ci�ncias', 77).
nota('amanda', 'Lab. de Programa��o', 100).
nota('amanda', 'Lab. de Qu�mica', 98).
nota('amanda', 'Int. a Ci�ncias Exatas', 93).
nota('amanda', 'C�lculo II', 77).
nota('amanda', 'Int. � Estat�stica', 72).
nota('amanda', 'Lab. F�sica I', 98).
nota('amanda', 'Estrutura de Dados', 74).
nota('amanda', 'Lab. de Programa��o II', 60).
nota('amanda', 'Lab. de Est. e Transf.', 88).
nota('amanda', 'Lab de Ci�ncia da Comp.', 99).

nota('julia', 'Algoritmos', 78).
nota('julia', 'Geometria Anal�tica e Sis. Lineares', 89).
nota('julia', 'C�lculo I', 99).
nota('julia', 'Qu�mica Fundamental', 67).
nota('julia', 'Lab. Ci�ncias', 86).
nota('julia', 'Lab. de Programa��o', 77).
nota('julia', 'Lab. de Qu�mica', 87).
nota('julia', 'Int. a Ci�ncias Exatas', 76).
nota('julia', 'C�lculo II', 65).
nota('julia', 'Int. � Estat�stica', 80).
nota('julia', 'Lab. F�sica I', 80).
nota('julia', 'Estrutura de Dados', 87).
nota('julia', 'Lab. de Programa��o II', 89).
nota('julia', 'Lab. de Est. e Transf.', 86).
nota('julia', 'Lab de Ci�ncia da Comp.', 88).

nota('pedro', 'Algoritmos', 60).
nota('pedro', 'Geometria Anal�tica e Sis. Lineares', 77).
nota('pedro', 'C�lculo I', 76).
nota('pedro', 'Qu�mica Fundamental', 65).
nota('pedro', 'Lab. Ci�ncias', 89).
nota('pedro', 'Lab. de Programa��o', 60).
nota('pedro', 'Lab. de Qu�mica', 89).
nota('pedro', 'Int. a Ci�ncias Exatas', 76).
nota('pedro', 'C�lculo II', 75).
nota('pedro', 'Int. � Estat�stica', 74).
nota('pedro', 'Lab. F�sica I', 85).
nota('pedro', 'Estrutura de Dados', 76).
nota('pedro', 'Lab. de Programa��o II', 67).
nota('pedro', 'Lab. de Est. e Transf.', 77).
nota('pedro', 'Lab de Ci�ncia da Comp.', 77).
nota('pedro', 'C�lculo III', 68).
nota('pedro', 'L�gica e Fundamentos da Comp.', 90).
nota('pedro', 'Int. a Teoria dos N�meros', 68).
nota('pedro', 'Teoria dos Grafos', 61).
nota('pedro', 'Orienta��o a Objetos', 73).
nota('pedro', 'Circuitos Digitais', 72).

nota('gabriel', 'Algoritmos', 80).
nota('gabriel', 'Geometria Anal�tica e Sis. Lineares', 83).
nota('gabriel', 'C�lculo I', 84).
nota('gabriel', 'Qu�mica Fundamental', 70).
nota('gabriel', 'Lab. Ci�ncias', 80).
nota('gabriel', 'Lab. de Programa��o', 89).
nota('gabriel', 'Lab. de Qu�mica', 88).
nota('gabriel', 'Int. a Ci�ncias Exatas', 100).
nota('gabriel', 'C�lculo II', 60).
nota('gabriel', 'Int. � Estat�stica', 70).
nota('gabriel', 'Lab. F�sica I', 81).
nota('gabriel', 'Estrutura de Dados', 82).
nota('gabriel', 'Lab. de Programa��o II', 73).
nota('gabriel', 'Lab. de Est. e Transf.', 74).
nota('gabriel', 'Lab de Ci�ncia da Comp.', 95).
nota('gabriel', 'C�lculo III', 67).
nota('gabriel', 'L�gica e Fundamentos da Comp.', 86).
nota('gabriel', 'Int. a Teoria dos N�meros', 65).
nota('gabriel', 'Teoria dos Grafos', 74).
nota('gabriel', 'Orienta��o a Objetos', 83).
nota('gabriel', 'Circuitos Digitais', 89).

nota('monica', 'Algoritmos', 98).
nota('monica', 'Geometria Anal�tica e Sis. Lineares', 77).
nota('monica', 'C�lculo I', 96).
nota('monica', 'Qu�mica Fundamental', 95).
nota('monica', 'Lab. Ci�ncias', 95).
nota('monica', 'Lab. de Programa��o', 94).
nota('monica', 'Lab. de Qu�mica', 83).
nota('monica', 'Int. a Ci�ncias Exatas', 72).
nota('monica', 'C�lculo II', 91).
nota('monica', 'Int. � Estat�stica', 80).
nota('monica', 'Lab. F�sica I', 70).
nota('monica', 'Estrutura de Dados', 75).
nota('monica', 'Lab. de Programa��o II', 73).
nota('monica', 'Lab. de Est. e Transf.', 82).
nota('monica', 'Lab de Ci�ncia da Comp.', 89).
nota('monica', 'C�lculo III', 85).
nota('monica', 'L�gica e Fundamentos da Comp.', 80).
nota('monica', 'Int. a Teoria dos N�meros', 79).
nota('monica', 'Teoria dos Grafos', 80).
nota('monica', 'Orienta��o a Objetos', 84).
nota('monica', 'Circuitos Digitais', 87).
nota('monica', '�lgebra Linear', 93).
nota('monica', 'Equa��es Diferenciais I', 74).
nota('monica', 'C�lculo Num�rico', 63).
nota('monica', 'Estrutura de Dados 2', 82).
nota('monica', 'Modelagem de Sistemas', 91).
nota('monica', 'Organiza��o de Computadores', 76).
nota('monica', 'Computa��o Gr�fica', 90).
nota('monica', 'Intelig�ncia Artificial', 79).
nota('monica', 'C�lculo de Probabilidades I', 84).
nota('monica', 'Banco de Dados', 90).
nota('monica', 'Engenharia de Software', 67).
nota('monica', 'Sistemas Operacionais', 80).

nota('andre', 'Algoritmos', 80).
nota('andre', 'Geometria Anal�tica e Sis. Lineares', 89).
nota('andre', 'C�lculo I', 87).
nota('andre', 'Qu�mica Fundamental', 80).
nota('andre', 'Lab. Ci�ncias', 86).
nota('andre', 'Lab. de Programa��o', 85).
nota('andre', 'Lab. de Qu�mica', 90).
nota('andre', 'Int. a Ci�ncias Exatas', 83).
nota('andre', 'C�lculo II', 84).
nota('andre', 'Int. � Estat�stica', 80).
nota('andre', 'Lab. F�sica I', 74).
nota('andre', 'Estrutura de Dados', 75).
nota('andre', 'Lab. de Programa��o II', 77).
nota('andre', 'Lab. de Est. e Transf.', 90).
nota('andre', 'Lab de Ci�ncia da Comp.', 93).
nota('andre', 'C�lculo III', 80).
nota('andre', 'L�gica e Fundamentos da Comp.', 90).
nota('andre', 'Int. a Teoria dos N�meros', 80).
nota('andre', 'Teoria dos Grafos', 91).
nota('andre', 'Orienta��o a Objetos', 61).
nota('andre', 'Circuitos Digitais', 71).
nota('andre', '�lgebra Linear', 90).
nota('andre', 'Equa��es Diferenciais I', 67).
nota('andre', 'C�lculo Num�rico', 86).
nota('andre', 'Estrutura de Dados 2', 75).
nota('andre', 'Modelagem de Sistemas', 84).
nota('andre', 'Organiza��o de Computadores', 70).
nota('andre', 'Computa��o Gr�fica', 60).
nota('andre', 'Intelig�ncia Artificial', 73).
nota('andre', 'C�lculo de Probabilidades I', 73).
nota('andre', 'Banco de Dados', 80).
nota('andre', 'Engenharia de Software', 89).
nota('andre', 'Sistemas Operacionais', 90).
nota('andre', 'Pesquisa Operacional', 77).
nota('andre', 'Linguagens Formais', 81).
nota('andre', 'Intera��o Humano-Computador', 67).
nota('andre', 'Inform�tica e Sociedade', 90).
nota('andre', 'Redes de Computadores', 90).
nota('andre', 'Sistemas Distribu�dos', 70).


% SI:
('carlos', 'Algoritmos', 1).
('carlos', 'Geometria Anal�tica e Sis. Lineares', 1).
('carlos', 'C�lculo I', 1).
('carlos', 'Lab. de Programa��o', 1).

('sara', 'Algoritmos', 2).
('sara', 'Geometria Anal�tica e Sis. Lineares', 2).
('sara', 'C�lculo I', 2).
('sara', 'Lab. de Programa��o', 2).
('sara', 'C�lculo II', 1).
('sara', 'Estrutura de Dados', 1).
('sara', 'Lab. de Programa��o II', 1).

('sofia', 'Algoritmos', 3).
('sofia', 'Geometria Anal�tica e Sis. Lineares', 3).
('sofia', 'C�lculo I', 3).
('sofia', 'Lab. de Programa��o', 3).
('sofia', 'C�lculo II', 2).
('sofia', 'Estrutura de Dados', 2).
('sofia', 'Lab. de Programa��o II', 2).
('sofia', 'Teoria dos Grafos', 1).
('sofia', 'Orienta��o a Objetos', 1).

('maria', 'Algoritmos', 4).
('maria', 'Geometria Anal�tica e Sis. Lineares', 4).
('maria', 'C�lculo I', 4).
('maria', 'Lab. de Programa��o', 4).
('maria', 'C�lculo II', 3).
('maria', 'Estrutura de Dados', 3).
('maria', 'Lab. de Programa��o II', 3).
('maria', 'Teoria dos Grafos', 2).
('maria', 'Orienta��o a Objetos', 2).
('maria', 'Estrutura de Dados 2', 1).
('maria', 'Modelagem de Sistemas', 1).
('maria', 'Organiza��o de Computadores', 1).
('maria', 'Aspectos Te�ricos da Computa��o', 1).

('clara', 'Algoritmos', 4).
('clara', 'Geometria Anal�tica e Sis. Lineares', 4).
('clara', 'C�lculo I', 4).
('clara', 'Lab. de Programa��o', 4).
('clara', 'C�lculo II', 3).
('clara', 'Estrutura de Dados', 3).
('clara', 'Lab. de Programa��o II', 3).
('clara', 'Teoria dos Grafos', 2).
('clara', 'Orienta��o a Objetos', 2).
('clara', 'Estrutura de Dados 2', 1).
('clara', 'Modelagem de Sistemas', 1).
('clara', 'Organiza��o de Computadores', 1).
('clara', 'Aspectos Te�ricos da Computa��o', 1).

('saul', 'Algoritmos', 5).
('saul', 'Geometria Anal�tica e Sis. Lineares', 5).
('saul', 'C�lculo I', 5).
('saul', 'Lab. de Programa��o', 5).
('saul', 'C�lculo II', 4).
('saul', 'Estrutura de Dados', 4).
('saul', 'Lab. de Programa��o II', 4).
('saul', 'Teoria dos Grafos', 3).
('saul', 'Orienta��o a Objetos', 3).
('saul', 'Estrutura de Dados 2', 2).
('saul', 'Modelagem de Sistemas', 2).
('saul', 'Organiza��o de Computadores', 2).
('saul', 'Aspectos Te�ricos da Computa��o', 2).
('saul', 'Intelig�ncia Artificial', 1).
('saul', 'C�lculo de Probabilidades I', 1).
('saul', 'Banco de Dados', 1).
('saul', 'Engenharia de Software', 1).
('saul', 'Sistemas Operacionais', 1).

('vitor', 'Algoritmos', 6).
('vitor', 'Geometria Anal�tica e Sis. Lineares', 6).
('vitor', 'C�lculo I', 6).
('vitor', 'Lab. de Programa��o', 6).
('vitor', 'C�lculo II', 5).
('vitor', 'Estrutura de Dados', 5).
('vitor', 'Lab. de Programa��o II', 5).
('vitor', 'Teoria dos Grafos', 4).
('vitor', 'Orienta��o a Objetos', 4).
('vitor', 'Estrutura de Dados 2', 3).
('vitor', 'Modelagem de Sistemas', 3).
('vitor', 'Organiza��o de Computadores', 3).
('vitor', 'Aspectos Te�ricos da Computa��o', 3).
('vitor', 'Intelig�ncia Artificial', 2).
('vitor', 'C�lculo de Probabilidades I', 2).
('vitor', 'Banco de Dados', 2).
('vitor', 'Engenharia de Software', 2).
('vitor', 'Sistemas Operacionais', 2).
('vitor', 'Pesquisa Operacional', 1).
('vitor', 'Intera��o Humano-Computador', 1).
('vitor', 'Inform�tica e Sociedade', 1).
('vitor', 'Redes de Computadores', 1).
('vitor', 'Lab. de Programa��o Web', 1).

('matheus', 'Algoritmos', 6).
('matheus', 'Geometria Anal�tica e Sis. Lineares', 6).
('matheus', 'C�lculo I', 6).
('matheus', 'Lab. de Programa��o', 6).
('matheus', 'C�lculo II', 5).
('matheus', 'Estrutura de Dados', 5).
('matheus', 'Lab. de Programa��o II', 5).
('matheus', 'Teoria dos Grafos', 4).
('matheus', 'Orienta��o a Objetos', 4).
('matheus', 'Estrutura de Dados 2', 3).
('matheus', 'Modelagem de Sistemas', 3).
('matheus', 'Organiza��o de Computadores', 3).
('matheus', 'Aspectos Te�ricos da Computa��o', 3).
('matheus', 'Intelig�ncia Artificial', 2).
('matheus', 'C�lculo de Probabilidades I', 2).
('matheus', 'Banco de Dados', 2).
('matheus', 'Engenharia de Software', 2).
('matheus', 'Sistemas Operacionais', 2).
('matheus', 'Pesquisa Operacional', 1).
('matheus', 'Intera��o Humano-Computador', 1).
('matheus', 'Inform�tica e Sociedade', 1).
('matheus', 'Redes de Computadores', 1).
('matheus', 'Lab. de Programa��o Web', 1).


% historico
:- dynamic cursando/3.

% CC:
cursando('joao', 'Algoritmos', 1).
cursando('joao', 'Geometria Anal�tica e Sis. Lineares', 1).
cursando('joao', 'C�lculo I', 1).
cursando('joao', 'Qu�mica Fundamental', 1).
cursando('joao', 'Lab. Ci�ncias', 1).
cursando('joao', 'Lab. de Programa��o', 1).
cursando('joao', 'Lab. de Qu�mica', 1).
cursando('joao', 'Int. a Ci�ncias Exatas', 1).
cursando('joao', 'C�lculo II', 0).
cursando('joao', 'Int. � Estat�stica', 0).
cursando('joao', 'Lab. F�sica I', 0).
cursando('joao', 'Estrutura de Dados', 0).
cursando('joao', 'Lab. de Programa��o II', 0).
cursando('joao', 'Lab. de Est. e Transf.', 0).
cursando('joao', 'Lab de Ci�ncia da Comp.', 0).

cursando('lara', 'Algoritmos', 1).
cursando('lara', 'Geometria Anal�tica e Sis. Lineares', 1).
cursando('lara', 'C�lculo I', 1).
cursando('lara', 'Qu�mica Fundamental', 1).
cursando('lara', 'Lab. Ci�ncias', 1).
cursando('lara', 'Lab. de Programa��o', 1).
cursando('lara', 'Lab. de Qu�mica', 1).
cursando('lara', 'Int. a Ci�ncias Exatas', 1).
cursando('lara', 'C�lculo II', 0).
cursando('lara', 'Int. � Estat�stica', 0).
cursando('lara', 'Lab. F�sica I', 0).
cursando('lara', 'Estrutura de Dados', 0).
cursando('lara', 'Lab. de Programa��o II', 0).
cursando('lara', 'Lab. de Est. e Transf.', 0).
cursando('lara', 'Lab de Ci�ncia da Comp.', 0).

cursando('amanda', 'Algoritmos', 2).
cursando('amanda', 'Geometria Anal�tica e Sis. Lineares', 2).
cursando('amanda', 'C�lculo I', 2).
cursando('amanda', 'Qu�mica Fundamental', 2).
cursando('amanda', 'Lab. Ci�ncias', 2).
cursando('amanda', 'Lab. de Programa��o', 2).
cursando('amanda', 'Lab. de Qu�mica', 2).
cursando('amanda', 'Int. a Ci�ncias Exatas', 2).
cursando('amanda', 'C�lculo II', 1).
cursando('amanda', 'Int. � Estat�stica', 1).
cursando('amanda', 'Lab. F�sica I', 1).
cursando('amanda', 'Estrutura de Dados', 1).
cursando('amanda', 'Lab. de Programa��o II', 1).
cursando('amanda', 'Lab. de Est. e Transf.', 1).
cursando('amanda', 'Lab de Ci�ncia da Comp.', 1).
cursando('amanda', 'C�lculo III', 0).
cursando('amanda', 'L�gica e Fundamentos da Comp.', 0).
cursando('amanda', 'Int. a Teoria dos N�meros', 0).
cursando('amanda', 'Teoria dos Grafos', 0).
cursando('amanda', 'Orienta��o a Objetos', 0).
cursando('amanda', 'Circuitos Digitais', 0).

cursando('julia', 'Algoritmos', 2).
cursando('julia', 'Geometria Anal�tica e Sis. Lineares', 2).
cursando('julia', 'C�lculo I', 2).
cursando('julia', 'Qu�mica Fundamental', 2).
cursando('julia', 'Lab. Ci�ncias', 2).
cursando('julia', 'Lab. de Programa��o', 2).
cursando('julia', 'Lab. de Qu�mica', 2).
cursando('julia', 'Int. a Ci�ncias Exatas', 2).
cursando('julia', 'C�lculo II', 1).
cursando('julia', 'Int. � Estat�stica', 1).
cursando('julia', 'Lab. F�sica I', 1).
cursando('julia', 'Estrutura de Dados', 1).
cursando('julia', 'Lab. de Programa��o II', 1).
cursando('julia', 'Lab. de Est. e Transf.', 1).
cursando('julia', 'Lab de Ci�ncia da Comp.', 1).
cursando('julia', 'C�lculo III', 0).
cursando('julia', 'L�gica e Fundamentos da Comp.', 0).
cursando('julia', 'Int. a Teoria dos N�meros', 0).
cursando('julia', 'Teoria dos Grafos', 0).
cursando('julia', 'Orienta��o a Objetos', 0).
cursando('julia', 'Circuitos Digitais', 0).

cursando('jose', 'Algoritmos', 0).
cursando('jose', 'Geometria Anal�tica e Sis. Lineares', 0).
cursando('jose', 'C�lculo I', 0).
cursando('jose', 'Qu�mica Fundamental', 0).
cursando('jose', 'Lab. Ci�ncias', 0).
cursando('jose', 'Lab. de Programa��o', 0).
cursando('jose', 'Lab. de Qu�mica', 0).
cursando('jose', 'Int. a Ci�ncias Exatas', 0).

cursando('leo', 'Algoritmos', 0).
cursando('leo', 'Geometria Anal�tica e Sis. Lineares', 0).
cursando('leo', 'C�lculo I', 0).
cursando('leo', 'Qu�mica Fundamental', 0).
cursando('leo', 'Lab. Ci�ncias', 0).
cursando('leo', 'Lab. de Programa��o', 0).
cursando('leo', 'Lab. de Qu�mica', 0).
cursando('leo', 'Int. a Ci�ncias Exatas', 0).

cursando('pedro', 'Algoritmos', 3).
cursando('pedro', 'Geometria Anal�tica e Sis. Lineares', 3).
cursando('pedro', 'C�lculo I', 3).
cursando('pedro', 'Qu�mica Fundamental', 3).
cursando('pedro', 'Lab. Ci�ncias', 3).
cursando('pedro', 'Lab. de Programa��o', 3).
cursando('pedro', 'Lab. de Qu�mica', 3).
cursando('pedro', 'Int. a Ci�ncias Exatas', 3).
cursando('pedro', 'C�lculo II', 2).
cursando('pedro', 'Int. � Estat�stica', 2).
cursando('pedro', 'Lab. F�sica I', 2).
cursando('pedro', 'Estrutura de Dados', 2).
cursando('pedro', 'Lab. de Programa��o II', 2).
cursando('pedro', 'Lab. de Est. e Transf.', 2).
cursando('pedro', 'Lab de Ci�ncia da Comp.', 2).
cursando('pedro', 'C�lculo III', 1).
cursando('pedro', 'L�gica e Fundamentos da Comp.', 1).
cursando('pedro', 'Int. a Teoria dos N�meros', 1).
cursando('pedro', 'Teoria dos Grafos', 1).
cursando('pedro', 'Orienta��o a Objetos', 1).
cursando('pedro', 'Circuitos Digitais', 1).
cursando('pedro', '�lgebra Linear', 0).
cursando('pedro', 'Equa��es Diferenciais I', 0).
cursando('pedro', 'C�lculo Num�rico', 0).
cursando('pedro', 'Estrutura de Dados 2', 0).
cursando('pedro', 'Modelagem de Sistemas', 0).
cursando('pedro', 'Organiza��o de Computadores', 0).

cursando('gabriel', 'Algoritmos', 3).
cursando('gabriel', 'Geometria Anal�tica e Sis. Lineares', 3).
cursando('gabriel', 'C�lculo I', 3).
cursando('gabriel', 'Qu�mica Fundamental', 3).
cursando('gabriel', 'Lab. Ci�ncias', 3).
cursando('gabriel', 'Lab. de Programa��o', 3).
cursando('gabriel', 'Lab. de Qu�mica', 3).
cursando('gabriel', 'Int. a Ci�ncias Exatas', 3).
cursando('gabriel', 'C�lculo II', 2).
cursando('gabriel', 'Int. � Estat�stica', 2).
cursando('gabriel', 'Lab. F�sica I', 2).
cursando('gabriel', 'Estrutura de Dados', 2).
cursando('gabriel', 'Lab. de Programa��o II', 2).
cursando('gabriel', 'Lab. de Est. e Transf.', 2).
cursando('gabriel', 'Lab de Ci�ncia da Comp.', 2).
cursando('gabriel', 'C�lculo III', 1).
cursando('gabriel', 'L�gica e Fundamentos da Comp.', 1).
cursando('gabriel', 'Int. a Teoria dos N�meros', 1).
cursando('gabriel', 'Teoria dos Grafos', 1).
cursando('gabriel', 'Orienta��o a Objetos', 1).
cursando('gabriel', 'Circuitos Digitais', 1).
cursando('gabriel', '�lgebra Linear', 0).
cursando('gabriel', 'Equa��es Diferenciais I', 0).
cursando('gabriel', 'C�lculo Num�rico', 0).
cursando('gabriel', 'Estrutura de Dados 2', 0).
cursando('gabriel', 'Modelagem de Sistemas', 0).
cursando('gabriel', 'Organiza��o de Computadores', 0).

cursando('monica', 'Algoritmos', 5).
cursando('monica', 'Geometria Anal�tica e Sis. Lineares', 5).
cursando('monica', 'C�lculo I', 5).
cursando('monica', 'Qu�mica Fundamental', 5).
cursando('monica', 'Lab. Ci�ncias', 5).
cursando('monica', 'Lab. de Programa��o', 5).
cursando('monica', 'Lab. de Qu�mica', 5).
cursando('monica', 'Int. a Ci�ncias Exatas', 5).
cursando('monica', 'C�lculo II', 4).
cursando('monica', 'Int. � Estat�stica', 4).
cursando('monica', 'Lab. F�sica I', 4).
cursando('monica', 'Estrutura de Dados', 4).
cursando('monica', 'Lab. de Programa��o II', 4).
cursando('monica', 'Lab. de Est. e Transf.', 4).
cursando('monica', 'Lab de Ci�ncia da Comp.', 4).
cursando('monica', 'C�lculo III', 3).
cursando('monica', 'L�gica e Fundamentos da Comp.', 3).
cursando('monica', 'Int. a Teoria dos N�meros', 3).
cursando('monica', 'Teoria dos Grafos', 3).
cursando('monica', 'Orienta��o a Objetos', 3).
cursando('monica', 'Circuitos Digitais', 3).
cursando('monica', '�lgebra Linear', 2).
cursando('monica', 'Equa��es Diferenciais I', 2).
cursando('monica', 'C�lculo Num�rico', 2).
cursando('monica', 'Estrutura de Dados 2', 2).
cursando('monica', 'Modelagem de Sistemas', 2).
cursando('monica', 'Organiza��o de Computadores', 2).
cursando('monica', 'Computa��o Gr�fica', 1).
cursando('monica', 'Intelig�ncia Artificial', 1).
cursando('monica', 'C�lculo de Probabilidades I', 1).
cursando('monica', 'Banco de Dados', 1).
cursando('monica', 'Engenharia de Software', 1).
cursando('monica', 'Sistemas Operacionais', 1).
cursando('monica', 'Pesquisa Operacional', 0).
cursando('monica', 'Linguagens Formais', 0).
cursando('monica', 'Intera��o Humano-Computador', 0).
cursando('monica', 'Inform�tica e Sociedade', 0).
cursando('monica', 'Redes de Computadores', 0).
cursando('monica', 'Sistemas Distribu�dos', 0).

cursando('andre', 'Algoritmos', 6).
cursando('andre', 'Geometria Anal�tica e Sis. Lineares', 6).
cursando('andre', 'C�lculo I', 6).
cursando('andre', 'Qu�mica Fundamental', 6).
cursando('andre', 'Lab. Ci�ncias', 6).
cursando('andre', 'Lab. de Programa��o', 6).
cursando('andre', 'Lab. de Qu�mica', 6).
cursando('andre', 'Int. a Ci�ncias Exatas', 6).
cursando('andre', 'C�lculo II', 5).
cursando('andre', 'Int. � Estat�stica', 5).
cursando('andre', 'Lab. F�sica I', 5).
cursando('andre', 'Estrutura de Dados', 5).
cursando('andre', 'Lab. de Programa��o II', 5).
cursando('andre', 'Lab. de Est. e Transf.', 5).
cursando('andre', 'Lab de Ci�ncia da Comp.', 5).
cursando('andre', 'C�lculo III', 4).
cursando('andre', 'L�gica e Fundamentos da Comp.', 4).
cursando('andre', 'Int. a Teoria dos N�meros', 4).
cursando('andre', 'Teoria dos Grafos', 4).
cursando('andre', 'Orienta��o a Objetos', 4).
cursando('andre', 'Circuitos Digitais', 4).
cursando('andre', '�lgebra Linear', 3).
cursando('andre', 'Equa��es Diferenciais I', 3).
cursando('andre', 'C�lculo Num�rico', 3).
cursando('andre', 'Estrutura de Dados 2', 3).
cursando('andre', 'Modelagem de Sistemas', 3).
cursando('andre', 'Organiza��o de Computadores', 3).
cursando('andre', 'Computa��o Gr�fica', 2).
cursando('andre', 'Intelig�ncia Artificial', 2).
cursando('andre', 'C�lculo de Probabilidades I', 2).
cursando('andre', 'Banco de Dados', 2).
cursando('andre', 'Engenharia de Software', 2).
cursando('andre', 'Sistemas Operacionais', 2).
cursando('andre', 'Pesquisa Operacional', 1).
cursando('andre', 'Linguagens Formais', 1).
cursando('andre', 'Intera��o Humano-Computador', 1).
cursando('andre', 'Inform�tica e Sociedade', 1).
cursando('andre', 'Redes de Computadores', 1).
cursando('andre', 'Sistemas Distribu�dos', 1).
cursando('andre', 'Teoria da Computa��o', 0).
cursando('andre', 'An�lise e Projeto de Algoritmos', 0).
cursando('andre', 'Seguran�a em Sist. de Computa��o', 0).
cursando('andre', 'Metodologia Cient�fica em Computa��o', 0).

% SI:
cursando('paulo', 'Algoritmos', 0).
cursando('paulo', 'Geometria Anal�tica e Sis. Lineares', 0).
cursando('paulo', 'C�lculo I', 0).
cursando('paulo', 'Lab. de Programa��o', 0).
cursando('paulo', 'L�gica e Fundamentos da Comp.', 0).

cursando('yuri', 'Algoritmos', 0).
cursando('yuri', 'Geometria Anal�tica e Sis. Lineares', 0).
cursando('yuri', 'C�lculo I', 0).
cursando('yuri', 'Lab. de Programa��o', 0).
cursando('yuri', 'L�gica e Fundamentos da Comp.', 0).

cursando('carlos', 'Algoritmos', 1).
cursando('carlos', 'Geometria Anal�tica e Sis. Lineares', 1).
cursando('carlos', 'C�lculo I', 1).
cursando('carlos', 'Lab. de Programa��o', 1).
cursando('carlos', 'C�lculo II', 0).
cursando('carlos', 'Estrutura de Dados', 0).
cursando('carlos', 'Lab. de Programa��o II', 0).

cursando('sara', 'Algoritmos', 2).
cursando('sara', 'Geometria Anal�tica e Sis. Lineares', 2).
cursando('sara', 'C�lculo I', 2).
cursando('sara', 'Lab. de Programa��o', 2).
cursando('sara', 'C�lculo II', 1).
cursando('sara', 'Estrutura de Dados', 1).
cursando('sara', 'Lab. de Programa��o II', 1).
cursando('sara', 'Teoria dos Grafos', 0).
cursando('sara', 'Orienta��o a Objetos', 0).

cursando('sofia', 'Algoritmos', 3).
cursando('sofia', 'Geometria Anal�tica e Sis. Lineares', 3).
cursando('sofia', 'C�lculo I', 3).
cursando('sofia', 'Lab. de Programa��o', 3).
cursando('sofia', 'C�lculo II', 2).
cursando('sofia', 'Estrutura de Dados', 2).
cursando('sofia', 'Lab. de Programa��o II', 2).
cursando('sofia', 'Teoria dos Grafos', 1).
cursando('sofia', 'Orienta��o a Objetos', 1).
cursando('sofia', 'Estrutura de Dados 2', 0).
cursando('sofia', 'Modelagem de Sistemas', 0).
cursando('sofia', 'Organiza��o de Computadores', 0).
cursando('sofia', 'Aspectos Te�ricos da Computa��o', 0).

cursando('maria', 'Algoritmos', 4).
cursando('maria', 'Geometria Anal�tica e Sis. Lineares', 4).
cursando('maria', 'C�lculo I', 4).
cursando('maria', 'Lab. de Programa��o', 4).
cursando('maria', 'C�lculo II', 3).
cursando('maria', 'Estrutura de Dados', 3).
cursando('maria', 'Lab. de Programa��o II', 3).
cursando('maria', 'Teoria dos Grafos', 2).
cursando('maria', 'Orienta��o a Objetos', 2).
cursando('maria', 'Estrutura de Dados 2', 1).
cursando('maria', 'Modelagem de Sistemas', 1).
cursando('maria', 'Organiza��o de Computadores', 1).
cursando('maria', 'Aspectos Te�ricos da Computa��o', 1).
cursando('maria', 'Intelig�ncia Artificial', 0).
cursando('maria', 'C�lculo de Probabilidades I', 0).
cursando('maria', 'Banco de Dados', 0).
cursando('maria', 'Engenharia de Software', 0).
cursando('maria', 'Sistemas Operacionais', 0).

cursando('clara', 'Algoritmos', 4).
cursando('clara', 'Geometria Anal�tica e Sis. Lineares', 4).
cursando('clara', 'C�lculo I', 4).
cursando('clara', 'Lab. de Programa��o', 4).
cursando('clara', 'C�lculo II', 3).
cursando('clara', 'Estrutura de Dados', 3).
cursando('clara', 'Lab. de Programa��o II', 3).
cursando('clara', 'Teoria dos Grafos', 2).
cursando('clara', 'Orienta��o a Objetos', 2).
cursando('clara', 'Estrutura de Dados 2', 1).
cursando('clara', 'Modelagem de Sistemas', 1).
cursando('clara', 'Organiza��o de Computadores', 1).
cursando('clara', 'Aspectos Te�ricos da Computa��o', 1).
cursando('clara', 'Intelig�ncia Artificial', 0).
cursando('clara', 'C�lculo de Probabilidades I', 0).
cursando('clara', 'Banco de Dados', 0).
cursando('clara', 'Engenharia de Software', 0).
cursando('clara', 'Sistemas Operacionais', 0).

cursando('saul', 'Algoritmos', 5).
cursando('saul', 'Geometria Anal�tica e Sis. Lineares', 5).
cursando('saul', 'C�lculo I', 5).
cursando('saul', 'Lab. de Programa��o', 5).
cursando('saul', 'C�lculo II', 4).
cursando('saul', 'Estrutura de Dados', 4).
cursando('saul', 'Lab. de Programa��o II', 4).
cursando('saul', 'Teoria dos Grafos', 3).
cursando('saul', 'Orienta��o a Objetos', 3).
cursando('saul', 'Estrutura de Dados 2', 2).
cursando('saul', 'Modelagem de Sistemas', 2).
cursando('saul', 'Organiza��o de Computadores', 2).
cursando('saul', 'Aspectos Te�ricos da Computa��o', 2).
cursando('saul', 'Intelig�ncia Artificial', 1).
cursando('saul', 'C�lculo de Probabilidades I', 1).
cursando('saul', 'Banco de Dados', 1).
cursando('saul', 'Engenharia de Software', 1).
cursando('saul', 'Sistemas Operacionais', 1).
cursando('saul', 'Pesquisa Operacional', 0).
cursando('saul', 'Intera��o Humano-Computador', 0).
cursando('saul', 'Inform�tica e Sociedade', 0).
cursando('saul', 'Redes de Computadores', 0).
cursando('saul', 'Lab. de Programa��o Web', 0).

cursando('vitor', 'Algoritmos', 6).
cursando('vitor', 'Geometria Anal�tica e Sis. Lineares', 6).
cursando('vitor', 'C�lculo I', 6).
cursando('vitor', 'Lab. de Programa��o', 6).
cursando('vitor', 'C�lculo II', 5).
cursando('vitor', 'Estrutura de Dados', 5).
cursando('vitor', 'Lab. de Programa��o II', 5).
cursando('vitor', 'Teoria dos Grafos', 4).
cursando('vitor', 'Orienta��o a Objetos', 4).
cursando('vitor', 'Estrutura de Dados 2', 3).
cursando('vitor', 'Modelagem de Sistemas', 3).
cursando('vitor', 'Organiza��o de Computadores', 3).
cursando('vitor', 'Aspectos Te�ricos da Computa��o', 3).
cursando('vitor', 'Intelig�ncia Artificial', 2).
cursando('vitor', 'C�lculo de Probabilidades I', 2).
cursando('vitor', 'Banco de Dados', 2).
cursando('vitor', 'Engenharia de Software', 2).
cursando('vitor', 'Sistemas Operacionais', 2).
cursando('vitor', 'Pesquisa Operacional', 1).
cursando('vitor', 'Intera��o Humano-Computador', 1).
cursando('vitor', 'Inform�tica e Sociedade', 1).
cursando('vitor', 'Redes de Computadores', 1).
cursando('vitor', 'Lab. de Programa��o Web', 1).
cursando('vitor', 'Empreendimentos em Inform�tica', 0).
cursando('vitor', 'Ger�ncia de Projetos', 0).
cursando('vitor', 'Teste de Software', 0).

cursando('matheus', 'Algoritmos', 6).
cursando('matheus', 'Geometria Anal�tica e Sis. Lineares', 6).
cursando('matheus', 'C�lculo I', 6).
cursando('matheus', 'Lab. de Programa��o', 6).
cursando('matheus', 'C�lculo II', 5).
cursando('matheus', 'Estrutura de Dados', 5).
cursando('matheus', 'Lab. de Programa��o II', 5).
cursando('matheus', 'Teoria dos Grafos', 4).
cursando('matheus', 'Orienta��o a Objetos', 4).
cursando('matheus', 'Estrutura de Dados 2', 3).
cursando('matheus', 'Modelagem de Sistemas', 3).
cursando('matheus', 'Organiza��o de Computadores', 3).
cursando('matheus', 'Aspectos Te�ricos da Computa��o', 3).
cursando('matheus', 'Intelig�ncia Artificial', 2).
cursando('matheus', 'C�lculo de Probabilidades I', 2).
cursando('matheus', 'Banco de Dados', 2).
cursando('matheus', 'Engenharia de Software', 2).
cursando('matheus', 'Sistemas Operacionais', 2).
cursando('matheus', 'Pesquisa Operacional', 1).
cursando('matheus', 'Intera��o Humano-Computador', 1).
cursando('matheus', 'Inform�tica e Sociedade', 1).
cursando('matheus', 'Redes de Computadores', 1).
cursando('matheus', 'Lab. de Programa��o Web', 1).
cursando('matheus', 'Empreendimentos em Inform�tica', 0).
cursando('matheus', 'Ger�ncia de Projetos', 0).
cursando('matheus', 'Teste de Software', 0).


%

historico(X, Y, N) :- estudante(X), disciplina(Y), cursando(X, Y, _), nota(X, Y, N).
historicoLista(X, Lista) :- bagof([Y, Z], historico(X, Y, Z), Lista).
historicoNotas(X, N) :- estudante(X), disciplina(Y), cursando(X, Y, _), nota(X, Y, N).

estudantesCursaram(X, Y) :- disciplina(X), estudante(Y), cursando(Y, X, _).
estudantesCursaramLista(X, Lista) :- bagof(Y, estudantesCursaram(X, Y), Lista).

estudantesCursaram(X, Y, Nmin) :- estudantesCursaram(X, Y), nota(Y, X, N), N >= Nmin.
estudantesCursaramLista(X, Nmin, Lista) :- bagof(Y, estudantesCursaram(X, Y, Nmin), Lista).

% matriz curricular
matrizCurricular(X, Y, P) :- curso(X), disciplina(Y), disciplinaCurso(Y, X, P).
matrizCurricularLista(X, Lista) :- bagof([Y, P], matrizCurricular(X, Y, P), Lista).

falta(X, Y) :- estudante(X), disciplina(Y), estudanteCurso(X, W), cursosDisciplina(Y, W), not(historico(X, Y, _)). %????? ta errado provavelmente
faltaLista(X, Lista) :- bagof(Y, falta(X, Y), Lista).

% ira
sum([], 0).
sum([H|T], S) :- sum(T, R), S is H+R.

avg(Lista, A) :- sum(Lista, S), length(Lista, L), A is S/L.

ira(X, IRA) :- estudante(X), setof(N, historicoNotas(X, N), Lista), avg(Lista, IRA).

estudantes(C, D, Nmin, X) :- estudante(X), curso(C), estudanteCurso(X, C), disciplina(D), estudantesCursaram(D, X), nota(X, D, N), N >= Nmin.
estudantesLista(C, D, Nmin, Lista) :- setof(X, estudantes(C, D, Nmin, X), Lista).

estudantes(C, IRAmin, X) :- estudante(X), curso(C), estudanteCurso(X, C), ira(X, IRA), IRA >= IRAmin.
estudantesLista(C, IRAmin, Lista) :- setof(X, estudantes(C, IRAmin, X), Lista).

% cadastrar
cadastrarEstudante(Estudante) :- assertz(estudante(Estudante)).
cadastrarEstudante(Estudante, Curso) :- assertz(estudante(Estudante)), assertz(estudanteCurso(Estudante, Curso)).

cadastrarCurso(Curso) :- assert(curso(Curso)).

cadastrarDisciplina(Disciplina) :- assertz(disciplina(Disciplina)).
cadastrarDisciplina(Disciplina, Curso, Periodo) :- curso(Curso), number(Periodo), assertz(disciplina(Disciplina)), assertz((disciplinaCurso(Disciplina, Curso, Periodo))).

matricularEstudante(Estudante, Disciplina) :- estudante(Estudante), disciplina(Disciplina), assertz(cursando(Estudante, Disciplina, 0)).

registrarNotaEstudante(Estudante, Disciplina, Nota) :- estudante(Estudante), disciplina(Disciplina), number(Nota), cursando(Estudante, Disciplina, 0), assertz(nota(Estudante, Disciplina, Nota)).

% remover
removerEstudante(Estudante) :- retract(estudante(Estudante)), retract(estudanteCurso(Estudante, _)), retract(nota(Estudante, _, _)), retract(cursando(Estudante, _, _)).

removerCurso(Curso) :- retract(curso(Curso)).

removerDisciplina(Disciplina) :- retract(disciplina(Disciplina)), retract(disciplinaCurso(Disciplina, _, _)).

desmatricularEstudante(Estudante, Disciplina) :- estudante(Estudante), disciplina(Disciplina), cursando(Estudante, Disciplina, 0), retract(cursando(Estudante, Disciplina, 0)).

deletarNotaEstudante(Estudante, Disciplina) :- estudante(Estudante), disciplina(Disciplina), cursando(Estudante, Disciplina, 0), retract(nota(Estudante, Disciplina, _)).

% editar

editarNotaEstudante(Estudante, Disciplina, NewNota) :- estudante(Estudante), disciplina(Disciplina), cursando(Estudante, Disciplina, 0), retract(nota(Estudante, Disciplina, _)), assertz(nota(Estudante, Disciplina, NewNota)).




























