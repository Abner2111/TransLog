:-include('DB.pl').

% Retorna la union de dos listas
concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]):-concatenar(L1, L2, L3).

% Retorna el primer elemento de una lista como lsita
primero([X|T], [X]).

% Sintagma nominal
% Valida si es una estructura que tiene un sustantivo o pronombre como nucleo

% Formado por un sustantivo o pronombre unico

sintagma_nominal(ES, EN, S):- pronombre(GENERO, NUMERO, ES, P, S), primero(P, EN).
sintagma_nominal(ES, EN, S):- pronombre(GENERO, NUMERO, P, EN, S), primero(P, ES).
sintagma_nominal(ES, EN, S):- sustantivo(GENERO, NUMERO, ES, P, S), primero(P, EN).
sintagma_nominal(ES, EN, S):- sustantivo(GENERO, NUMERO, P, EN, S), primero(P, ES).

% Formado por un termino que funcione como nucleo acompañado de otras palabras que lo modifican

% Determinante segido por un sustantivo ES->EN
% Ejm: el policia -> the police
sintagma_nominal(ES,EN, S):- determinante(GENERO, NUMERO, ES, EN1, S1),
                             sustantivo(GENERO, NUMERO, S1, EN2, S),
                             primero(EN1, P), primero(EN2, P2), 
                             concatenar(P,P2, EN).

% Determinante segido por un sustantivo EN->ES
% Ejm: the police -> el policia
sintagma_nominal(ES,EN, S):- determinante(GENERO, NUMERO, ES1, EN, S1), 
                             sustantivo(GENERO, NUMERO, ES2, S1, S),
                             primero(ES1, P), primero(ES2, P2),
                             concatenar(P,P2, ES).

% Sustantivo + adjetivo ES -> EN
% Ejm: carro rojo -> red car
sintagma_nominal(ES,EN, S):- sustantivo(GENERO, NUMERO, ES, EN1, S1),
                             adjetivo(GENERO, NUMERO, S1, EN2, S), 
                             primero(EN1, P), primero(EN2, P2)
                             concatenar(P2,P, EN).

% Sustantivo + adjetivo EN -> ES ----------------------------------------------revisar
% Ejm: red car ->  carro rojo
sintagma_nominal(ES, EN, S):- adjetivo(GENERO, NUMERO, ES1, EN, S1), 
                              sustantivo(GENERO, NUMERO, ES2, S1, S),                           
                              primero(ES1, P),
                              concatenar(ES2,P, ES).

% Determinante + sustantivo + adjetivo ES -> EN
% Ejm: el carro rojo -> the red car
sintagma_nominal(ES, EN, S):- determinante(GENERO, NUMERO, ES, EN1, S1),
                              sustantivo(GENERO, NUMERO, S1, EN2, S2),
                              adjetivo(GENERO, NUMERO, S2, EN3, S), 
                              primero(EN1, P1), primero(EN2, P2),  
                              primero(EN3, P3), 
                              concatenar(P1, P3, R), 
                              concatenar(R, P2, EN).

% Determinante + sustantivo + adjetivo EN-> ES
% Ejm: the red car -> el carro rojo 
sintagma_nominal(ES, EN, S):- determinante(GENERO, NUMERO, ES1, EN, S1),
                              adjetivo(GENERO, NUMERO, ES2, S1, S), 
                              sustantivo(GENERO, NUMERO, ES3, S2, S), 
                              primero(ES1, P1), primero(ES3, P3), primero(ES2, P2)
                              concatenar(P1, P3, R), concatenar(R, P2, ES).

% Determinante + adjetivo + sustantivo ES-> EN
% Ejm: el rojo carro -> the red car
sintagma_nominal(ES, EN, S):- determinante(GENERO, NUMERO, ES, EN1, S1), 
                              adjetivo(GENERO, NUMERO, S1, EN2, S2), 
                              sustantivo(GENERO, NUMERO, S2, EN3, S), 
                              primero(EN1, P1), primero(EN2, P2), primero(EN3, P3)
                              concatenar(P1, P2, R), concatenar(R, P3, EN).



%sintagma_nominal(ES,EN, S):- adjetivo(GENERO, NUMERO, ES, EN1, S1), sustantivo(GENERO, NUMERO, S1, EN2, S), primero(EN1, P), concatenar(P,EN2, EN).
%sintagma_nominal(ES, EN, S):- adjetivo(GENERO, NUMERO, ES1, EN, S1), sustantivo(GENERO, NUMERO, ES2, S1, S), primero(ES1, P), concatenar(P,ES2, ES).


% Sintagma verbal

%Solamente verbo

sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES, EN, S).

% pronombre y verbo SE PUEDE MEJORAR PONIENDO SIGTAGMA NOMINAL Y VERBO

sintagma_verbal(ES, EN, S):- pronombre(GENERO, NUMERO, ES, EN1, S1), verbo(PERSONA, NUMERO, S1, EN2, S), primero(EN1, P), concatenar(P,EN2, EN).
sintagma_verbal(ES, EN, S):- pronombre(GENERO, NUMERO, ES1, EN, S1), verbo(PERSONA, NUMERO, ES2, S1, S), primero(ES1, P), concatenar(P,ES2, EN).

%Verbo y sintagma nominal

sintagma_verbal(ES, EN, S):- sintagma_nominal(ES, EN5, S1), verbo(PERSONA, NUMERO, S1, EN1, S), primero(EN1, P), concatenar(EN5,EN1, EN).
sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES, EN1, S1), sintagma_nominal(S1, EN5, []), primero(EN1, P), concatenar(EN5,P, EN).

%Verbo y un adjetivo

sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES, EN1, S1), adjetivo(GENERO, NUMERO, S1, EN2, S), primero(EN1, P), concatenar(P,EN2, EN).
sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES1, EN, S1), adjetivo(GENERO, NUMERO, ES2, S1, S), primero(ES1, P), concatenar(P,ES2, EN).


