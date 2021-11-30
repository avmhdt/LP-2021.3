%% Trabalho 1 Linguagem de Programação 2021.3
% Autores:
% José Santos Sá Carvalho - 201665557C
% Júlia Almeida Valadares - 201765562AC
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
curso('Ciência da Computação').
curso('Sistemas de Informação').

:- dynamic estudanteCurso/2.
estudanteCurso('joao', 'Ciência da Computação').
estudanteCurso('lara', 'Ciência da Computação').
estudanteCurso('amanda', 'Ciência da Computação').
estudanteCurso('julia', 'Ciência da Computação').
estudanteCurso('jose', 'Ciência da Computação').
estudanteCurso('leo', 'Ciência da Computação').
estudanteCurso('pedro', 'Ciência da Computação').
estudanteCurso('gabriel', 'Ciência da Computação').
estudanteCurso('monica', 'Ciência da Computação').
estudanteCurso('andre', 'Ciência da Computação').
estudanteCurso('paulo', 'Sistemas de Informação').
estudanteCurso('yuri', 'Sistemas de Informação').
estudanteCurso('carlos', 'Sistemas de Informação').
estudanteCurso('sara', 'Sistemas de Informação').
estudanteCurso('sofia', 'Sistemas de Informação').
estudanteCurso('maria', 'Sistemas de Informação').
estudanteCurso('clara', 'Sistemas de Informação').
estudanteCurso('saul', 'Sistemas de Informação').
estudanteCurso('vitor', 'Sistemas de Informação').
estudanteCurso('matheus', 'Sistemas de Informação').

estudantes(X, Y) :- curso(X), estudante(Y), estudanteCurso(Y, X).
estudantesLista(X, Lista) :- bagof(Y, estudantes(X, Y), Lista).

% Seleção por nota em disciplina ou IRA aqui

% disciplina
:- dynamic disciplina/1.
disciplina('Algoritmos').
disciplina('Geometria Analítica e Sis. Lineares').
disciplina('Cálculo I').
disciplina('Química Fundamental').
disciplina('Lab. Ciências').
disciplina('Lab. de Programação').
disciplina('Lab. de Química').
disciplina('Int. a Ciências Exatas').
disciplina('Cálculo II').
disciplina('Int. à Estatística').
disciplina('Lab. Física I').
disciplina('Estrutura de Dados').
disciplina('Lab. de Programação II').
disciplina('Lab. de Est. e Transf.').
disciplina('Lab de Ciência da Comp.').
disciplina('Cálculo III').
disciplina('Lógica e Fundamentos da Comp.').
disciplina('Int. a Teoria dos Números').
disciplina('Teoria dos Grafos').
disciplina('Orientação a Objetos').
disciplina('Circuitos Digitais').
disciplina('Álgebra Linear').
disciplina('Equações Diferenciais I').
disciplina('Cálculo Numérico').
disciplina('Estrutura de Dados 2').
disciplina('Modelagem de Sistemas').
disciplina('Organização de Computadores').
disciplina('Computação Gráfica').
disciplina('Inteligência Artificial').
disciplina('Cálculo de Probabilidades I').
disciplina('Banco de Dados').
disciplina('Engenharia de Software').
disciplina('Sistemas Operacionais').
disciplina('Pesquisa Operacional').
disciplina('Linguagens Formais').
disciplina('Interação Humano-Computador').
disciplina('Informática e Sociedade').
disciplina('Redes de Computadores').
disciplina('Sistemas Distribuídos').
disciplina('Teoria da Computação').
disciplina('Análise e Projeto de Algoritmos').
disciplina('Segurança em Sist. de Computação').
disciplina('Teoria dos Compiladores').
disciplina('Linguagem de Programação').
disciplina('Física I').
disciplina('Física II').
disciplina('Contabilidade Geral').
disciplina('Lab. de Programação Web').
disciplina('Princípios Gerais de Administração I').
disciplina('Aspectos Legais da Informática').
disciplina('Aspectos Teóricos da Computação').
disciplina('Lab. de Programação de Sistemas Web').
disciplina('Lab. de Programação de Sistemas Web II').
disciplina('Empreendimentos em Informática').
disciplina('Gerência de Projetos').
disciplina('Teste de Software').
disciplina('Aspectos Avançados de Eng. de Software').
disciplina('Aspectos Avançados de Banco de Dados').
disciplina('Aspectos Organizacionais de SI').
disciplina('Metodologia Científica em Computação').
disciplina('Lab. de Prog. para Dispositivos Móveis').
disciplina('Sistema de Apoio à Decisão').
disciplina('Segurança e Auditoria de Sistemas').
disciplina('Monografia Final em Computação').
disciplina('TCC em Sistemas de Informação').

:- dynamic disciplinaCurso/3.
disciplinaCurso('Algoritmos', 'Ciência da Computação', 1).
disciplinaCurso('Algoritmos', 'Sistemas de Informação', 1).
disciplinaCurso('Contabilidade Geral', 'Sistemas de Informação', 4).

disciplinaCurso('Geometria Analítica e Sis. Lineares', 'Ciência da Computação', 1).
disciplinaCurso('Cálculo I', 'Ciência da Computação', 1).
disciplinaCurso('Química Fundamental', 'Ciência da Computação', 1).
disciplinaCurso('Lab. Ciências', 'Ciência da Computação', 1).
disciplinaCurso('Lab. de Programação', 'Ciência da Computação', 1).
disciplinaCurso('Lab. de Química', 'Ciência da Computação', 1).
disciplinaCurso('Int. a Ciências Exatas', 'Ciência da Computação', 1).
disciplinaCurso('Cálculo II', 'Ciência da Computação', 2).
disciplinaCurso('Int. à Estatística', 'Ciência da Computação', 2).
disciplinaCurso('Lab. Física I', 'Ciência da Computação', 2).
disciplinaCurso('Estrutura de Dados', 'Ciência da Computação', 2).
disciplinaCurso('Lab. de Programação II', 'Ciência da Computação', 2).
disciplinaCurso('Lab. de Est. e Transf.', 'Ciência da Computação', 2).
disciplinaCurso('Lab de Ciência da Comp.', 'Ciência da Computação', 2).
disciplinaCurso('Cálculo III', 'Ciência da Computação', 3).
disciplinaCurso('Lógica e Fundamentos da Comp.', 'Ciência da Computação', 3).
disciplinaCurso('Int. a Teoria dos Números', 'Ciência da Computação', 3).
disciplinaCurso('Teoria dos Grafos', 'Ciência da Computação', 3).
disciplinaCurso('Orientação a Objetos', 'Ciência da Computação', 3).
disciplinaCurso('Circuitos Digitais', 'Ciência da Computação', 3).
disciplinaCurso('Álgebra Linear', 'Ciência da Computação', 4).
disciplinaCurso('Equações Diferenciais I', 'Ciência da Computação', 4).
disciplinaCurso('Cálculo Numérico', 'Ciência da Computação', 4).
disciplinaCurso('Estrutura de Dados 2', 'Ciência da Computação', 4).
disciplinaCurso('Modelagem de Sistemas', 'Ciência da Computação', 4).
disciplinaCurso('Organização de Computadores', 'Ciência da Computação', 4).
disciplinaCurso('Computação Gráfica', 'Ciência da Computação', 5).
disciplinaCurso('Inteligência Artificial', 'Ciência da Computação', 5).
disciplinaCurso('Cálculo de Probabilidades I', 'Ciência da Computação', 5).
disciplinaCurso('Banco de Dados', 'Ciência da Computação', 5).
disciplinaCurso('Engenharia de Software', 'Ciência da Computação', 5).
disciplinaCurso('Sistemas Operacionais', 'Ciência da Computação', 5).
disciplinaCurso('Pesquisa Operacional', 'Ciência da Computação', 6).
disciplinaCurso('Linguagens Formais', 'Ciência da Computação', 6).
disciplinaCurso('Interação Humano-Computador', 'Ciência da Computação', 6).
disciplinaCurso('Informática e Sociedade', 'Ciência da Computação', 6).
disciplinaCurso('Redes de Computadores', 'Ciência da Computação', 6).
disciplinaCurso('Sistemas Distribuídos', 'Ciência da Computação', 6).
disciplinaCurso('Teoria da Computação', 'Ciência da Computação', 7).
disciplinaCurso('Análise e Projeto de Algoritmos', 'Ciência da Computação', 7).
disciplinaCurso('Segurança em Sist. de Computação', 'Ciência da Computação', 7).
disciplinaCurso('Teoria dos Compiladores', 'Ciência da Computação', 8).
disciplinaCurso('Linguagem de Programação', 'Ciência da Computação', 8).
disciplinaCurso('Metodologia Científica em Computação', 'Ciência da Computação', 7).
disciplinaCurso('Monografia Final em Computação', 'Ciência da Computação', 8).

disciplinaCurso('Geometria Analítica e Sis. Lineares', 'Sistemas de Informação', 1).
disciplinaCurso('Cálculo I', 'Sistemas de Informação', 1).
disciplinaCurso('Lab. de Programação', 'Sistemas de Informação', 1).
disciplinaCurso('Cálculo II','Sistemas de Informação' , 2).
disciplinaCurso('Estrutura de Dados','Sistemas de Informação' , 2).
disciplinaCurso('Lab. de Programação II', 'Sistemas de Informação', 2).
disciplinaCurso('Lógica e Fundamentos da Comp.', 'Sistemas de Informação', 1).
disciplinaCurso('Teoria dos Grafos', 'Sistemas de Informação', 3).
disciplinaCurso('Orientação a Objetos', 'Sistemas de Informação', 3).
disciplinaCurso('Estrutura de Dados 2', 'Sistemas de Informação', 4).
disciplinaCurso('Modelagem de Sistemas', 'Sistemas de Informação', 4).
disciplinaCurso('Organização de Computadores', 'Sistemas de Informação', 4).
disciplinaCurso('Inteligência Artificial', 'Sistemas de Informação', 5).
disciplinaCurso('Cálculo de Probabilidades I', 'Sistemas de Informação', 3).
disciplinaCurso('Banco de Dados', 'Sistemas de Informação', 5).
disciplinaCurso('Engenharia de Software', 'Sistemas de Informação', 5).
disciplinaCurso('Sistemas Operacionais', 'Sistemas de Informação', 5).
disciplinaCurso('Pesquisa Operacional','Sistemas de Informação' , 6).
disciplinaCurso('Interação Humano-Computador','Sistemas de Informação' , 6).
disciplinaCurso('Informática e Sociedade', 'Sistemas de Informação', 3).
disciplinaCurso('Redes de Computadores', 'Sistemas de Informação', 6).
disciplinaCurso('Lab. de Programação Web', 'Sistemas de Informação', 5).
disciplinaCurso('Princípios Gerais de Administração I', 'Sistemas de Informação', 2).
disciplinaCurso('Aspectos Legais da Informática', 'Sistemas de Informação', 2).
disciplinaCurso('Aspectos Teóricos da Computação', 'Sistemas de Informação', 4).
disciplinaCurso('Lab. de Programação de Sistemas Web', 'Sistemas de Informação', 5).
disciplinaCurso('Lab. de Programação de Sistemas Web II', 'Sistemas de Informação', 6).
disciplinaCurso('Empreendimentos em Informática', 'Sistemas de Informação', 6).
disciplinaCurso('Gerência de Projetos', 'Sistemas de Informação', 7).
disciplinaCurso('Teste de Software', 'Sistemas de Informação', 7).
disciplinaCurso('Aspectos Avançados de Eng. de Software', 'Sistemas de Informação', 7).
disciplinaCurso('Aspectos Avançados de Banco de Dados', 'Sistemas de Informação', 7).
disciplinaCurso('Aspectos Organizacionais de SI', 'Sistemas de Informação', 7).
disciplinaCurso('Metodologia Científica em Computação', 'Sistemas de Informação', 7).
disciplinaCurso('Lab. de Prog. para Dispositivos Móveis', 'Sistemas de Informação', 8).
disciplinaCurso('Sistema de Apoio à Decisão', 'Sistemas de Informação', 8).
disciplinaCurso('Segurança e Auditoria de Sistemas', 'Sistemas de Informação', 8).
disciplinaCurso('TCC em Sistemas de Informação', 'Sistemas de Informação', 8).

cursosDisciplina(X, Y) :- disciplina(X), curso(Y), disciplinaCurso(X, Y, _).
cursosDisciplinaLista(X, Lista) :- bagof(Y, cursosDisciplina(X, Y), Lista).

listaDisciplinasCurso(Y, Lista) :- setof(X, disciplinaCurso(X, Y, _), Lista).

% nota
:- dynamic nota/3.
nota('joao', 'Algoritmos', 100).
nota('joao', 'Geometria Analítica e Sis. Lineares', 85).
nota('joao', 'Cálculo I', 75).
nota('joao', 'Química Fundamental', 74).
nota('joao', 'Lab. Ciências', 86).
nota('joao', 'Lab. de Programação', 92).
nota('joao', 'Lab. de Química', 61).
nota('joao', 'Int. a Ciências Exatas', 65).

nota('lara', 'Algoritmos', 76).
nota('lara', 'Geometria Analítica e Sis. Lineares', 87).
nota('lara', 'Cálculo I', 96).
nota('lara', 'Química Fundamental', 88).
nota('lara', 'Lab. Ciências', 100).
nota('lara', 'Lab. de Programação', 64).
nota('lara', 'Lab. de Química', 77).
nota('lara', 'Int. a Ciências Exatas', 78).

nota('amanda', 'Algoritmos', 100).
nota('amanda', 'Geometria Analítica e Sis. Lineares', 97).
nota('amanda', 'Cálculo I', 68).
nota('amanda', 'Química Fundamental', 36).
nota('amanda', 'Lab. Ciências', 77).
nota('amanda', 'Lab. de Programação', 100).
nota('amanda', 'Lab. de Química', 98).
nota('amanda', 'Int. a Ciências Exatas', 93).
nota('amanda', 'Cálculo II', 77).
nota('amanda', 'Int. à Estatística', 72).
nota('amanda', 'Lab. Física I', 98).
nota('amanda', 'Estrutura de Dados', 74).
nota('amanda', 'Lab. de Programação II', 60).
nota('amanda', 'Lab. de Est. e Transf.', 88).
nota('amanda', 'Lab de Ciência da Comp.', 99).

nota('julia', 'Algoritmos', 78).
nota('julia', 'Geometria Analítica e Sis. Lineares', 89).
nota('julia', 'Cálculo I', 99).
nota('julia', 'Química Fundamental', 67).
nota('julia', 'Lab. Ciências', 86).
nota('julia', 'Lab. de Programação', 77).
nota('julia', 'Lab. de Química', 87).
nota('julia', 'Int. a Ciências Exatas', 76).
nota('julia', 'Cálculo II', 65).
nota('julia', 'Int. à Estatística', 80).
nota('julia', 'Lab. Física I', 80).
nota('julia', 'Estrutura de Dados', 87).
nota('julia', 'Lab. de Programação II', 89).
nota('julia', 'Lab. de Est. e Transf.', 86).
nota('julia', 'Lab de Ciência da Comp.', 88).

nota('pedro', 'Algoritmos', 60).
nota('pedro', 'Geometria Analítica e Sis. Lineares', 77).
nota('pedro', 'Cálculo I', 76).
nota('pedro', 'Química Fundamental', 65).
nota('pedro', 'Lab. Ciências', 89).
nota('pedro', 'Lab. de Programação', 60).
nota('pedro', 'Lab. de Química', 89).
nota('pedro', 'Int. a Ciências Exatas', 76).
nota('pedro', 'Cálculo II', 75).
nota('pedro', 'Int. à Estatística', 74).
nota('pedro', 'Lab. Física I', 85).
nota('pedro', 'Estrutura de Dados', 76).
nota('pedro', 'Lab. de Programação II', 67).
nota('pedro', 'Lab. de Est. e Transf.', 77).
nota('pedro', 'Lab de Ciência da Comp.', 77).
nota('pedro', 'Cálculo III', 68).
nota('pedro', 'Lógica e Fundamentos da Comp.', 90).
nota('pedro', 'Int. a Teoria dos Números', 68).
nota('pedro', 'Teoria dos Grafos', 61).
nota('pedro', 'Orientação a Objetos', 73).
nota('pedro', 'Circuitos Digitais', 72).

nota('gabriel', 'Algoritmos', 80).
nota('gabriel', 'Geometria Analítica e Sis. Lineares', 83).
nota('gabriel', 'Cálculo I', 84).
nota('gabriel', 'Química Fundamental', 70).
nota('gabriel', 'Lab. Ciências', 80).
nota('gabriel', 'Lab. de Programação', 89).
nota('gabriel', 'Lab. de Química', 88).
nota('gabriel', 'Int. a Ciências Exatas', 100).
nota('gabriel', 'Cálculo II', 60).
nota('gabriel', 'Int. à Estatística', 70).
nota('gabriel', 'Lab. Física I', 81).
nota('gabriel', 'Estrutura de Dados', 82).
nota('gabriel', 'Lab. de Programação II', 73).
nota('gabriel', 'Lab. de Est. e Transf.', 74).
nota('gabriel', 'Lab de Ciência da Comp.', 95).
nota('gabriel', 'Cálculo III', 67).
nota('gabriel', 'Lógica e Fundamentos da Comp.', 86).
nota('gabriel', 'Int. a Teoria dos Números', 65).
nota('gabriel', 'Teoria dos Grafos', 74).
nota('gabriel', 'Orientação a Objetos', 83).
nota('gabriel', 'Circuitos Digitais', 89).

nota('monica', 'Algoritmos', 98).
nota('monica', 'Geometria Analítica e Sis. Lineares', 77).
nota('monica', 'Cálculo I', 96).
nota('monica', 'Química Fundamental', 95).
nota('monica', 'Lab. Ciências', 95).
nota('monica', 'Lab. de Programação', 94).
nota('monica', 'Lab. de Química', 83).
nota('monica', 'Int. a Ciências Exatas', 72).
nota('monica', 'Cálculo II', 91).
nota('monica', 'Int. à Estatística', 80).
nota('monica', 'Lab. Física I', 70).
nota('monica', 'Estrutura de Dados', 75).
nota('monica', 'Lab. de Programação II', 73).
nota('monica', 'Lab. de Est. e Transf.', 82).
nota('monica', 'Lab de Ciência da Comp.', 89).
nota('monica', 'Cálculo III', 85).
nota('monica', 'Lógica e Fundamentos da Comp.', 80).
nota('monica', 'Int. a Teoria dos Números', 79).
nota('monica', 'Teoria dos Grafos', 80).
nota('monica', 'Orientação a Objetos', 84).
nota('monica', 'Circuitos Digitais', 87).
nota('monica', 'Álgebra Linear', 93).
nota('monica', 'Equações Diferenciais I', 74).
nota('monica', 'Cálculo Numérico', 63).
nota('monica', 'Estrutura de Dados 2', 82).
nota('monica', 'Modelagem de Sistemas', 91).
nota('monica', 'Organização de Computadores', 76).
nota('monica', 'Computação Gráfica', 90).
nota('monica', 'Inteligência Artificial', 79).
nota('monica', 'Cálculo de Probabilidades I', 84).
nota('monica', 'Banco de Dados', 90).
nota('monica', 'Engenharia de Software', 67).
nota('monica', 'Sistemas Operacionais', 80).

nota('andre', 'Algoritmos', 80).
nota('andre', 'Geometria Analítica e Sis. Lineares', 89).
nota('andre', 'Cálculo I', 87).
nota('andre', 'Química Fundamental', 80).
nota('andre', 'Lab. Ciências', 86).
nota('andre', 'Lab. de Programação', 85).
nota('andre', 'Lab. de Química', 90).
nota('andre', 'Int. a Ciências Exatas', 83).
nota('andre', 'Cálculo II', 84).
nota('andre', 'Int. à Estatística', 80).
nota('andre', 'Lab. Física I', 74).
nota('andre', 'Estrutura de Dados', 75).
nota('andre', 'Lab. de Programação II', 77).
nota('andre', 'Lab. de Est. e Transf.', 90).
nota('andre', 'Lab de Ciência da Comp.', 93).
nota('andre', 'Cálculo III', 80).
nota('andre', 'Lógica e Fundamentos da Comp.', 90).
nota('andre', 'Int. a Teoria dos Números', 80).
nota('andre', 'Teoria dos Grafos', 91).
nota('andre', 'Orientação a Objetos', 61).
nota('andre', 'Circuitos Digitais', 71).
nota('andre', 'Álgebra Linear', 90).
nota('andre', 'Equações Diferenciais I', 67).
nota('andre', 'Cálculo Numérico', 86).
nota('andre', 'Estrutura de Dados 2', 75).
nota('andre', 'Modelagem de Sistemas', 84).
nota('andre', 'Organização de Computadores', 70).
nota('andre', 'Computação Gráfica', 60).
nota('andre', 'Inteligência Artificial', 73).
nota('andre', 'Cálculo de Probabilidades I', 73).
nota('andre', 'Banco de Dados', 80).
nota('andre', 'Engenharia de Software', 89).
nota('andre', 'Sistemas Operacionais', 90).
nota('andre', 'Pesquisa Operacional', 77).
nota('andre', 'Linguagens Formais', 81).
nota('andre', 'Interação Humano-Computador', 67).
nota('andre', 'Informática e Sociedade', 90).
nota('andre', 'Redes de Computadores', 90).
nota('andre', 'Sistemas Distribuídos', 70).


% SI:
('carlos', 'Algoritmos', 1).
('carlos', 'Geometria Analítica e Sis. Lineares', 1).
('carlos', 'Cálculo I', 1).
('carlos', 'Lab. de Programação', 1).

('sara', 'Algoritmos', 2).
('sara', 'Geometria Analítica e Sis. Lineares', 2).
('sara', 'Cálculo I', 2).
('sara', 'Lab. de Programação', 2).
('sara', 'Cálculo II', 1).
('sara', 'Estrutura de Dados', 1).
('sara', 'Lab. de Programação II', 1).

('sofia', 'Algoritmos', 3).
('sofia', 'Geometria Analítica e Sis. Lineares', 3).
('sofia', 'Cálculo I', 3).
('sofia', 'Lab. de Programação', 3).
('sofia', 'Cálculo II', 2).
('sofia', 'Estrutura de Dados', 2).
('sofia', 'Lab. de Programação II', 2).
('sofia', 'Teoria dos Grafos', 1).
('sofia', 'Orientação a Objetos', 1).

('maria', 'Algoritmos', 4).
('maria', 'Geometria Analítica e Sis. Lineares', 4).
('maria', 'Cálculo I', 4).
('maria', 'Lab. de Programação', 4).
('maria', 'Cálculo II', 3).
('maria', 'Estrutura de Dados', 3).
('maria', 'Lab. de Programação II', 3).
('maria', 'Teoria dos Grafos', 2).
('maria', 'Orientação a Objetos', 2).
('maria', 'Estrutura de Dados 2', 1).
('maria', 'Modelagem de Sistemas', 1).
('maria', 'Organização de Computadores', 1).
('maria', 'Aspectos Teóricos da Computação', 1).

('clara', 'Algoritmos', 4).
('clara', 'Geometria Analítica e Sis. Lineares', 4).
('clara', 'Cálculo I', 4).
('clara', 'Lab. de Programação', 4).
('clara', 'Cálculo II', 3).
('clara', 'Estrutura de Dados', 3).
('clara', 'Lab. de Programação II', 3).
('clara', 'Teoria dos Grafos', 2).
('clara', 'Orientação a Objetos', 2).
('clara', 'Estrutura de Dados 2', 1).
('clara', 'Modelagem de Sistemas', 1).
('clara', 'Organização de Computadores', 1).
('clara', 'Aspectos Teóricos da Computação', 1).

('saul', 'Algoritmos', 5).
('saul', 'Geometria Analítica e Sis. Lineares', 5).
('saul', 'Cálculo I', 5).
('saul', 'Lab. de Programação', 5).
('saul', 'Cálculo II', 4).
('saul', 'Estrutura de Dados', 4).
('saul', 'Lab. de Programação II', 4).
('saul', 'Teoria dos Grafos', 3).
('saul', 'Orientação a Objetos', 3).
('saul', 'Estrutura de Dados 2', 2).
('saul', 'Modelagem de Sistemas', 2).
('saul', 'Organização de Computadores', 2).
('saul', 'Aspectos Teóricos da Computação', 2).
('saul', 'Inteligência Artificial', 1).
('saul', 'Cálculo de Probabilidades I', 1).
('saul', 'Banco de Dados', 1).
('saul', 'Engenharia de Software', 1).
('saul', 'Sistemas Operacionais', 1).

('vitor', 'Algoritmos', 6).
('vitor', 'Geometria Analítica e Sis. Lineares', 6).
('vitor', 'Cálculo I', 6).
('vitor', 'Lab. de Programação', 6).
('vitor', 'Cálculo II', 5).
('vitor', 'Estrutura de Dados', 5).
('vitor', 'Lab. de Programação II', 5).
('vitor', 'Teoria dos Grafos', 4).
('vitor', 'Orientação a Objetos', 4).
('vitor', 'Estrutura de Dados 2', 3).
('vitor', 'Modelagem de Sistemas', 3).
('vitor', 'Organização de Computadores', 3).
('vitor', 'Aspectos Teóricos da Computação', 3).
('vitor', 'Inteligência Artificial', 2).
('vitor', 'Cálculo de Probabilidades I', 2).
('vitor', 'Banco de Dados', 2).
('vitor', 'Engenharia de Software', 2).
('vitor', 'Sistemas Operacionais', 2).
('vitor', 'Pesquisa Operacional', 1).
('vitor', 'Interação Humano-Computador', 1).
('vitor', 'Informática e Sociedade', 1).
('vitor', 'Redes de Computadores', 1).
('vitor', 'Lab. de Programação Web', 1).

('matheus', 'Algoritmos', 6).
('matheus', 'Geometria Analítica e Sis. Lineares', 6).
('matheus', 'Cálculo I', 6).
('matheus', 'Lab. de Programação', 6).
('matheus', 'Cálculo II', 5).
('matheus', 'Estrutura de Dados', 5).
('matheus', 'Lab. de Programação II', 5).
('matheus', 'Teoria dos Grafos', 4).
('matheus', 'Orientação a Objetos', 4).
('matheus', 'Estrutura de Dados 2', 3).
('matheus', 'Modelagem de Sistemas', 3).
('matheus', 'Organização de Computadores', 3).
('matheus', 'Aspectos Teóricos da Computação', 3).
('matheus', 'Inteligência Artificial', 2).
('matheus', 'Cálculo de Probabilidades I', 2).
('matheus', 'Banco de Dados', 2).
('matheus', 'Engenharia de Software', 2).
('matheus', 'Sistemas Operacionais', 2).
('matheus', 'Pesquisa Operacional', 1).
('matheus', 'Interação Humano-Computador', 1).
('matheus', 'Informática e Sociedade', 1).
('matheus', 'Redes de Computadores', 1).
('matheus', 'Lab. de Programação Web', 1).


% historico
:- dynamic cursando/3.

% CC:
cursando('joao', 'Algoritmos', 1).
cursando('joao', 'Geometria Analítica e Sis. Lineares', 1).
cursando('joao', 'Cálculo I', 1).
cursando('joao', 'Química Fundamental', 1).
cursando('joao', 'Lab. Ciências', 1).
cursando('joao', 'Lab. de Programação', 1).
cursando('joao', 'Lab. de Química', 1).
cursando('joao', 'Int. a Ciências Exatas', 1).
cursando('joao', 'Cálculo II', 0).
cursando('joao', 'Int. à Estatística', 0).
cursando('joao', 'Lab. Física I', 0).
cursando('joao', 'Estrutura de Dados', 0).
cursando('joao', 'Lab. de Programação II', 0).
cursando('joao', 'Lab. de Est. e Transf.', 0).
cursando('joao', 'Lab de Ciência da Comp.', 0).

cursando('lara', 'Algoritmos', 1).
cursando('lara', 'Geometria Analítica e Sis. Lineares', 1).
cursando('lara', 'Cálculo I', 1).
cursando('lara', 'Química Fundamental', 1).
cursando('lara', 'Lab. Ciências', 1).
cursando('lara', 'Lab. de Programação', 1).
cursando('lara', 'Lab. de Química', 1).
cursando('lara', 'Int. a Ciências Exatas', 1).
cursando('lara', 'Cálculo II', 0).
cursando('lara', 'Int. à Estatística', 0).
cursando('lara', 'Lab. Física I', 0).
cursando('lara', 'Estrutura de Dados', 0).
cursando('lara', 'Lab. de Programação II', 0).
cursando('lara', 'Lab. de Est. e Transf.', 0).
cursando('lara', 'Lab de Ciência da Comp.', 0).

cursando('amanda', 'Algoritmos', 2).
cursando('amanda', 'Geometria Analítica e Sis. Lineares', 2).
cursando('amanda', 'Cálculo I', 2).
cursando('amanda', 'Química Fundamental', 2).
cursando('amanda', 'Lab. Ciências', 2).
cursando('amanda', 'Lab. de Programação', 2).
cursando('amanda', 'Lab. de Química', 2).
cursando('amanda', 'Int. a Ciências Exatas', 2).
cursando('amanda', 'Cálculo II', 1).
cursando('amanda', 'Int. à Estatística', 1).
cursando('amanda', 'Lab. Física I', 1).
cursando('amanda', 'Estrutura de Dados', 1).
cursando('amanda', 'Lab. de Programação II', 1).
cursando('amanda', 'Lab. de Est. e Transf.', 1).
cursando('amanda', 'Lab de Ciência da Comp.', 1).
cursando('amanda', 'Cálculo III', 0).
cursando('amanda', 'Lógica e Fundamentos da Comp.', 0).
cursando('amanda', 'Int. a Teoria dos Números', 0).
cursando('amanda', 'Teoria dos Grafos', 0).
cursando('amanda', 'Orientação a Objetos', 0).
cursando('amanda', 'Circuitos Digitais', 0).

cursando('julia', 'Algoritmos', 2).
cursando('julia', 'Geometria Analítica e Sis. Lineares', 2).
cursando('julia', 'Cálculo I', 2).
cursando('julia', 'Química Fundamental', 2).
cursando('julia', 'Lab. Ciências', 2).
cursando('julia', 'Lab. de Programação', 2).
cursando('julia', 'Lab. de Química', 2).
cursando('julia', 'Int. a Ciências Exatas', 2).
cursando('julia', 'Cálculo II', 1).
cursando('julia', 'Int. à Estatística', 1).
cursando('julia', 'Lab. Física I', 1).
cursando('julia', 'Estrutura de Dados', 1).
cursando('julia', 'Lab. de Programação II', 1).
cursando('julia', 'Lab. de Est. e Transf.', 1).
cursando('julia', 'Lab de Ciência da Comp.', 1).
cursando('julia', 'Cálculo III', 0).
cursando('julia', 'Lógica e Fundamentos da Comp.', 0).
cursando('julia', 'Int. a Teoria dos Números', 0).
cursando('julia', 'Teoria dos Grafos', 0).
cursando('julia', 'Orientação a Objetos', 0).
cursando('julia', 'Circuitos Digitais', 0).

cursando('jose', 'Algoritmos', 0).
cursando('jose', 'Geometria Analítica e Sis. Lineares', 0).
cursando('jose', 'Cálculo I', 0).
cursando('jose', 'Química Fundamental', 0).
cursando('jose', 'Lab. Ciências', 0).
cursando('jose', 'Lab. de Programação', 0).
cursando('jose', 'Lab. de Química', 0).
cursando('jose', 'Int. a Ciências Exatas', 0).

cursando('leo', 'Algoritmos', 0).
cursando('leo', 'Geometria Analítica e Sis. Lineares', 0).
cursando('leo', 'Cálculo I', 0).
cursando('leo', 'Química Fundamental', 0).
cursando('leo', 'Lab. Ciências', 0).
cursando('leo', 'Lab. de Programação', 0).
cursando('leo', 'Lab. de Química', 0).
cursando('leo', 'Int. a Ciências Exatas', 0).

cursando('pedro', 'Algoritmos', 3).
cursando('pedro', 'Geometria Analítica e Sis. Lineares', 3).
cursando('pedro', 'Cálculo I', 3).
cursando('pedro', 'Química Fundamental', 3).
cursando('pedro', 'Lab. Ciências', 3).
cursando('pedro', 'Lab. de Programação', 3).
cursando('pedro', 'Lab. de Química', 3).
cursando('pedro', 'Int. a Ciências Exatas', 3).
cursando('pedro', 'Cálculo II', 2).
cursando('pedro', 'Int. à Estatística', 2).
cursando('pedro', 'Lab. Física I', 2).
cursando('pedro', 'Estrutura de Dados', 2).
cursando('pedro', 'Lab. de Programação II', 2).
cursando('pedro', 'Lab. de Est. e Transf.', 2).
cursando('pedro', 'Lab de Ciência da Comp.', 2).
cursando('pedro', 'Cálculo III', 1).
cursando('pedro', 'Lógica e Fundamentos da Comp.', 1).
cursando('pedro', 'Int. a Teoria dos Números', 1).
cursando('pedro', 'Teoria dos Grafos', 1).
cursando('pedro', 'Orientação a Objetos', 1).
cursando('pedro', 'Circuitos Digitais', 1).
cursando('pedro', 'Álgebra Linear', 0).
cursando('pedro', 'Equações Diferenciais I', 0).
cursando('pedro', 'Cálculo Numérico', 0).
cursando('pedro', 'Estrutura de Dados 2', 0).
cursando('pedro', 'Modelagem de Sistemas', 0).
cursando('pedro', 'Organização de Computadores', 0).

cursando('gabriel', 'Algoritmos', 3).
cursando('gabriel', 'Geometria Analítica e Sis. Lineares', 3).
cursando('gabriel', 'Cálculo I', 3).
cursando('gabriel', 'Química Fundamental', 3).
cursando('gabriel', 'Lab. Ciências', 3).
cursando('gabriel', 'Lab. de Programação', 3).
cursando('gabriel', 'Lab. de Química', 3).
cursando('gabriel', 'Int. a Ciências Exatas', 3).
cursando('gabriel', 'Cálculo II', 2).
cursando('gabriel', 'Int. à Estatística', 2).
cursando('gabriel', 'Lab. Física I', 2).
cursando('gabriel', 'Estrutura de Dados', 2).
cursando('gabriel', 'Lab. de Programação II', 2).
cursando('gabriel', 'Lab. de Est. e Transf.', 2).
cursando('gabriel', 'Lab de Ciência da Comp.', 2).
cursando('gabriel', 'Cálculo III', 1).
cursando('gabriel', 'Lógica e Fundamentos da Comp.', 1).
cursando('gabriel', 'Int. a Teoria dos Números', 1).
cursando('gabriel', 'Teoria dos Grafos', 1).
cursando('gabriel', 'Orientação a Objetos', 1).
cursando('gabriel', 'Circuitos Digitais', 1).
cursando('gabriel', 'Álgebra Linear', 0).
cursando('gabriel', 'Equações Diferenciais I', 0).
cursando('gabriel', 'Cálculo Numérico', 0).
cursando('gabriel', 'Estrutura de Dados 2', 0).
cursando('gabriel', 'Modelagem de Sistemas', 0).
cursando('gabriel', 'Organização de Computadores', 0).

cursando('monica', 'Algoritmos', 5).
cursando('monica', 'Geometria Analítica e Sis. Lineares', 5).
cursando('monica', 'Cálculo I', 5).
cursando('monica', 'Química Fundamental', 5).
cursando('monica', 'Lab. Ciências', 5).
cursando('monica', 'Lab. de Programação', 5).
cursando('monica', 'Lab. de Química', 5).
cursando('monica', 'Int. a Ciências Exatas', 5).
cursando('monica', 'Cálculo II', 4).
cursando('monica', 'Int. à Estatística', 4).
cursando('monica', 'Lab. Física I', 4).
cursando('monica', 'Estrutura de Dados', 4).
cursando('monica', 'Lab. de Programação II', 4).
cursando('monica', 'Lab. de Est. e Transf.', 4).
cursando('monica', 'Lab de Ciência da Comp.', 4).
cursando('monica', 'Cálculo III', 3).
cursando('monica', 'Lógica e Fundamentos da Comp.', 3).
cursando('monica', 'Int. a Teoria dos Números', 3).
cursando('monica', 'Teoria dos Grafos', 3).
cursando('monica', 'Orientação a Objetos', 3).
cursando('monica', 'Circuitos Digitais', 3).
cursando('monica', 'Álgebra Linear', 2).
cursando('monica', 'Equações Diferenciais I', 2).
cursando('monica', 'Cálculo Numérico', 2).
cursando('monica', 'Estrutura de Dados 2', 2).
cursando('monica', 'Modelagem de Sistemas', 2).
cursando('monica', 'Organização de Computadores', 2).
cursando('monica', 'Computação Gráfica', 1).
cursando('monica', 'Inteligência Artificial', 1).
cursando('monica', 'Cálculo de Probabilidades I', 1).
cursando('monica', 'Banco de Dados', 1).
cursando('monica', 'Engenharia de Software', 1).
cursando('monica', 'Sistemas Operacionais', 1).
cursando('monica', 'Pesquisa Operacional', 0).
cursando('monica', 'Linguagens Formais', 0).
cursando('monica', 'Interação Humano-Computador', 0).
cursando('monica', 'Informática e Sociedade', 0).
cursando('monica', 'Redes de Computadores', 0).
cursando('monica', 'Sistemas Distribuídos', 0).

cursando('andre', 'Algoritmos', 6).
cursando('andre', 'Geometria Analítica e Sis. Lineares', 6).
cursando('andre', 'Cálculo I', 6).
cursando('andre', 'Química Fundamental', 6).
cursando('andre', 'Lab. Ciências', 6).
cursando('andre', 'Lab. de Programação', 6).
cursando('andre', 'Lab. de Química', 6).
cursando('andre', 'Int. a Ciências Exatas', 6).
cursando('andre', 'Cálculo II', 5).
cursando('andre', 'Int. à Estatística', 5).
cursando('andre', 'Lab. Física I', 5).
cursando('andre', 'Estrutura de Dados', 5).
cursando('andre', 'Lab. de Programação II', 5).
cursando('andre', 'Lab. de Est. e Transf.', 5).
cursando('andre', 'Lab de Ciência da Comp.', 5).
cursando('andre', 'Cálculo III', 4).
cursando('andre', 'Lógica e Fundamentos da Comp.', 4).
cursando('andre', 'Int. a Teoria dos Números', 4).
cursando('andre', 'Teoria dos Grafos', 4).
cursando('andre', 'Orientação a Objetos', 4).
cursando('andre', 'Circuitos Digitais', 4).
cursando('andre', 'Álgebra Linear', 3).
cursando('andre', 'Equações Diferenciais I', 3).
cursando('andre', 'Cálculo Numérico', 3).
cursando('andre', 'Estrutura de Dados 2', 3).
cursando('andre', 'Modelagem de Sistemas', 3).
cursando('andre', 'Organização de Computadores', 3).
cursando('andre', 'Computação Gráfica', 2).
cursando('andre', 'Inteligência Artificial', 2).
cursando('andre', 'Cálculo de Probabilidades I', 2).
cursando('andre', 'Banco de Dados', 2).
cursando('andre', 'Engenharia de Software', 2).
cursando('andre', 'Sistemas Operacionais', 2).
cursando('andre', 'Pesquisa Operacional', 1).
cursando('andre', 'Linguagens Formais', 1).
cursando('andre', 'Interação Humano-Computador', 1).
cursando('andre', 'Informática e Sociedade', 1).
cursando('andre', 'Redes de Computadores', 1).
cursando('andre', 'Sistemas Distribuídos', 1).
cursando('andre', 'Teoria da Computação', 0).
cursando('andre', 'Análise e Projeto de Algoritmos', 0).
cursando('andre', 'Segurança em Sist. de Computação', 0).
cursando('andre', 'Metodologia Científica em Computação', 0).

% SI:
cursando('paulo', 'Algoritmos', 0).
cursando('paulo', 'Geometria Analítica e Sis. Lineares', 0).
cursando('paulo', 'Cálculo I', 0).
cursando('paulo', 'Lab. de Programação', 0).
cursando('paulo', 'Lógica e Fundamentos da Comp.', 0).

cursando('yuri', 'Algoritmos', 0).
cursando('yuri', 'Geometria Analítica e Sis. Lineares', 0).
cursando('yuri', 'Cálculo I', 0).
cursando('yuri', 'Lab. de Programação', 0).
cursando('yuri', 'Lógica e Fundamentos da Comp.', 0).

cursando('carlos', 'Algoritmos', 1).
cursando('carlos', 'Geometria Analítica e Sis. Lineares', 1).
cursando('carlos', 'Cálculo I', 1).
cursando('carlos', 'Lab. de Programação', 1).
cursando('carlos', 'Cálculo II', 0).
cursando('carlos', 'Estrutura de Dados', 0).
cursando('carlos', 'Lab. de Programação II', 0).

cursando('sara', 'Algoritmos', 2).
cursando('sara', 'Geometria Analítica e Sis. Lineares', 2).
cursando('sara', 'Cálculo I', 2).
cursando('sara', 'Lab. de Programação', 2).
cursando('sara', 'Cálculo II', 1).
cursando('sara', 'Estrutura de Dados', 1).
cursando('sara', 'Lab. de Programação II', 1).
cursando('sara', 'Teoria dos Grafos', 0).
cursando('sara', 'Orientação a Objetos', 0).

cursando('sofia', 'Algoritmos', 3).
cursando('sofia', 'Geometria Analítica e Sis. Lineares', 3).
cursando('sofia', 'Cálculo I', 3).
cursando('sofia', 'Lab. de Programação', 3).
cursando('sofia', 'Cálculo II', 2).
cursando('sofia', 'Estrutura de Dados', 2).
cursando('sofia', 'Lab. de Programação II', 2).
cursando('sofia', 'Teoria dos Grafos', 1).
cursando('sofia', 'Orientação a Objetos', 1).
cursando('sofia', 'Estrutura de Dados 2', 0).
cursando('sofia', 'Modelagem de Sistemas', 0).
cursando('sofia', 'Organização de Computadores', 0).
cursando('sofia', 'Aspectos Teóricos da Computação', 0).

cursando('maria', 'Algoritmos', 4).
cursando('maria', 'Geometria Analítica e Sis. Lineares', 4).
cursando('maria', 'Cálculo I', 4).
cursando('maria', 'Lab. de Programação', 4).
cursando('maria', 'Cálculo II', 3).
cursando('maria', 'Estrutura de Dados', 3).
cursando('maria', 'Lab. de Programação II', 3).
cursando('maria', 'Teoria dos Grafos', 2).
cursando('maria', 'Orientação a Objetos', 2).
cursando('maria', 'Estrutura de Dados 2', 1).
cursando('maria', 'Modelagem de Sistemas', 1).
cursando('maria', 'Organização de Computadores', 1).
cursando('maria', 'Aspectos Teóricos da Computação', 1).
cursando('maria', 'Inteligência Artificial', 0).
cursando('maria', 'Cálculo de Probabilidades I', 0).
cursando('maria', 'Banco de Dados', 0).
cursando('maria', 'Engenharia de Software', 0).
cursando('maria', 'Sistemas Operacionais', 0).

cursando('clara', 'Algoritmos', 4).
cursando('clara', 'Geometria Analítica e Sis. Lineares', 4).
cursando('clara', 'Cálculo I', 4).
cursando('clara', 'Lab. de Programação', 4).
cursando('clara', 'Cálculo II', 3).
cursando('clara', 'Estrutura de Dados', 3).
cursando('clara', 'Lab. de Programação II', 3).
cursando('clara', 'Teoria dos Grafos', 2).
cursando('clara', 'Orientação a Objetos', 2).
cursando('clara', 'Estrutura de Dados 2', 1).
cursando('clara', 'Modelagem de Sistemas', 1).
cursando('clara', 'Organização de Computadores', 1).
cursando('clara', 'Aspectos Teóricos da Computação', 1).
cursando('clara', 'Inteligência Artificial', 0).
cursando('clara', 'Cálculo de Probabilidades I', 0).
cursando('clara', 'Banco de Dados', 0).
cursando('clara', 'Engenharia de Software', 0).
cursando('clara', 'Sistemas Operacionais', 0).

cursando('saul', 'Algoritmos', 5).
cursando('saul', 'Geometria Analítica e Sis. Lineares', 5).
cursando('saul', 'Cálculo I', 5).
cursando('saul', 'Lab. de Programação', 5).
cursando('saul', 'Cálculo II', 4).
cursando('saul', 'Estrutura de Dados', 4).
cursando('saul', 'Lab. de Programação II', 4).
cursando('saul', 'Teoria dos Grafos', 3).
cursando('saul', 'Orientação a Objetos', 3).
cursando('saul', 'Estrutura de Dados 2', 2).
cursando('saul', 'Modelagem de Sistemas', 2).
cursando('saul', 'Organização de Computadores', 2).
cursando('saul', 'Aspectos Teóricos da Computação', 2).
cursando('saul', 'Inteligência Artificial', 1).
cursando('saul', 'Cálculo de Probabilidades I', 1).
cursando('saul', 'Banco de Dados', 1).
cursando('saul', 'Engenharia de Software', 1).
cursando('saul', 'Sistemas Operacionais', 1).
cursando('saul', 'Pesquisa Operacional', 0).
cursando('saul', 'Interação Humano-Computador', 0).
cursando('saul', 'Informática e Sociedade', 0).
cursando('saul', 'Redes de Computadores', 0).
cursando('saul', 'Lab. de Programação Web', 0).

cursando('vitor', 'Algoritmos', 6).
cursando('vitor', 'Geometria Analítica e Sis. Lineares', 6).
cursando('vitor', 'Cálculo I', 6).
cursando('vitor', 'Lab. de Programação', 6).
cursando('vitor', 'Cálculo II', 5).
cursando('vitor', 'Estrutura de Dados', 5).
cursando('vitor', 'Lab. de Programação II', 5).
cursando('vitor', 'Teoria dos Grafos', 4).
cursando('vitor', 'Orientação a Objetos', 4).
cursando('vitor', 'Estrutura de Dados 2', 3).
cursando('vitor', 'Modelagem de Sistemas', 3).
cursando('vitor', 'Organização de Computadores', 3).
cursando('vitor', 'Aspectos Teóricos da Computação', 3).
cursando('vitor', 'Inteligência Artificial', 2).
cursando('vitor', 'Cálculo de Probabilidades I', 2).
cursando('vitor', 'Banco de Dados', 2).
cursando('vitor', 'Engenharia de Software', 2).
cursando('vitor', 'Sistemas Operacionais', 2).
cursando('vitor', 'Pesquisa Operacional', 1).
cursando('vitor', 'Interação Humano-Computador', 1).
cursando('vitor', 'Informática e Sociedade', 1).
cursando('vitor', 'Redes de Computadores', 1).
cursando('vitor', 'Lab. de Programação Web', 1).
cursando('vitor', 'Empreendimentos em Informática', 0).
cursando('vitor', 'Gerência de Projetos', 0).
cursando('vitor', 'Teste de Software', 0).

cursando('matheus', 'Algoritmos', 6).
cursando('matheus', 'Geometria Analítica e Sis. Lineares', 6).
cursando('matheus', 'Cálculo I', 6).
cursando('matheus', 'Lab. de Programação', 6).
cursando('matheus', 'Cálculo II', 5).
cursando('matheus', 'Estrutura de Dados', 5).
cursando('matheus', 'Lab. de Programação II', 5).
cursando('matheus', 'Teoria dos Grafos', 4).
cursando('matheus', 'Orientação a Objetos', 4).
cursando('matheus', 'Estrutura de Dados 2', 3).
cursando('matheus', 'Modelagem de Sistemas', 3).
cursando('matheus', 'Organização de Computadores', 3).
cursando('matheus', 'Aspectos Teóricos da Computação', 3).
cursando('matheus', 'Inteligência Artificial', 2).
cursando('matheus', 'Cálculo de Probabilidades I', 2).
cursando('matheus', 'Banco de Dados', 2).
cursando('matheus', 'Engenharia de Software', 2).
cursando('matheus', 'Sistemas Operacionais', 2).
cursando('matheus', 'Pesquisa Operacional', 1).
cursando('matheus', 'Interação Humano-Computador', 1).
cursando('matheus', 'Informática e Sociedade', 1).
cursando('matheus', 'Redes de Computadores', 1).
cursando('matheus', 'Lab. de Programação Web', 1).
cursando('matheus', 'Empreendimentos em Informática', 0).
cursando('matheus', 'Gerência de Projetos', 0).
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




























