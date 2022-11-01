:-include('DB.pl').
sintagma_verbal(primera,singular,S0e,S0i,S):-verbo(primera, singular,S0e,S0i,S).
%sintagma_verbal(segunda,singular,S0,S):-
%sintagma_nominal(S0,S,I0,I):-determinante(S0, S1, I0, I1),sustantivo(S1, S, I1, I).


concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]):-concatenar(L1, L2, L3).
primero([X|T], [X]).
% Sintagma nominal
% Valida si es una estructura que tiene un sustantivo, pronombre como nucleo

% Formado por un sustantivo o pronombre unico

sintagma_nominal(ES, EN, S):- pronombre(GENERO, NUMERO, ES, EN, S).
sintagma_nominal(ES, EN, S):- sustantivo(GENERO, NUMERO, ES, EN, S).

% Formado por un término que funcione como núcleo acompañado de otras palabras que lo modifican

sintagma_nominal(ES,EN, S):- determinante(GENERO, NUMERO, ES, EN1, S1), sustantivo(GENERO, NUMERO, S1, EN2, S), primero(EN1, P), concatenar(P,EN2, EN).
sintagma_nominal(ES, EN, S):- determinante(GENERO, NUMERO, ES, EN, S1), sustantivo(GENERO, NUMERO, ES, S1, S). 
sintagma_nominal(ES, EN, S):- determinante(GENERO, NUMERO, ES, EN, S), sustantivo(GENERO, NUMERO, ES, EN, S), adjetivo(GENERO, NUMERO, ES, EN).
sintagma_nominal(ES, EN, S):- determinante(GENERO, NUMERO, ES, EN, S), adjetivo(GENERO, NUMERO, ES, EN), sustantivo(GENERO, NUMERO, ES, EN, S).
sintagma_nominal(ES, EN, S):- sustantivo(GENERO, NUMERO, ES, EN, S), adjetivo(GENERO, NUMERO, ES, EN).
sintagma_nominal(ES, EN, S):- adjetivo(GENERO, NUMERO, ES, EN), sustantivo(GENERO, NUMERO, ES, EN, S).

% Sintagma verbal

%Solamente verbo

%Verbo y un adjetivo

%Verbo y sintagma nominal

%Sintagma verbal solo con verbo
