:-include('DB.pl').
:- style_check(-singleton).
% Retorna la union de dos listas
concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]):-concatenar(L1, L2, L3).

% Retorna el primer elemento de una lista como lsita
primero([X|T], [X]).

% Oraciones

% Saludos
oracion(ES,EN):- saludo(ES, EN, []).

% Despedida
oracion(ES, EN):- despedida(ES, EN, []).

% Frase
oracion(ES, EN):- frase(ES, EN, []).

% Solo sintagma nominal
oracion(ES, EN):- sintagma_nominal(ES,EN, []).

% Sintagma nominal + sintagma verbal
oracion(ES, EN):- sintagma_nominal(ES, EN1, S1), sintagma_verbal(S1, EN2, []), concatenar(EN1, EN2, EN).

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
                             primero(EN1, P), primero(EN2, P2),
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
                              primero(ES1, P1), primero(ES3, P3), primero(ES2, P2),
                              concatenar(P1, P3, R), concatenar(R, P2, ES).

% Determinante + adjetivo + sustantivo ES-> EN
% Ejm: el rojo carro -> the red car
sintagma_nominal(ES, EN, S):- determinante(GENERO, NUMERO, ES, EN1, S1), 
                              adjetivo(GENERO, NUMERO, S1, EN2, S2), 
                              sustantivo(GENERO, NUMERO, S2, EN3, S), 
                              primero(EN1, P1), primero(EN2, P2), primero(EN3, P3),
                              concatenar(P1, P2, R), concatenar(R, P3, EN).

% Sintagma verbal

% verbo + sintagma nominal
% como frutas rojas

sintagma_verbal(ES,EN,S):- verbo(PERSONA, NUMERO, ES, EN1, S1), sintagma_nominal(S1, EN2, []), primero(EN1, P), concatenar(P, EN2, EN).

% Solamente verbo
% Ejm: comer

sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES, P, S), primero(P, EN).
sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, P, EN, S), primero(P, ES).

% Verbo y un adjetivo
% Ejm: trabajo facil

sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES, EN1, S1), 
                             adjetivo(GENERO, NUMERO, S1, EN2, S), 
                             primero(EN1, P), primero(EN2, P2),
                             concatenar(P,P2, EN).

sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES1, EN, S1), 
                             adjetivo(GENERO, NUMERO, ES2, S1, S), 
                             primero(ES1, P), primero(ES2, P2),
                             concatenar(P,P2, ES).

% Verbo y adverbio
% Ejm: como ahora

sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES, EN1, S1),
                             adverbio(S1, EN2, S), 
                             primero(EN1, P), primero(EN2, P2),
                             concatenar(P,P2, EN).

sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES1, EN, S1),
                             adverbio(ES2, S1, S), 
                             primero(ES1, P), primero(ES2, P2),
                             concatenar(P,P2, ES).




