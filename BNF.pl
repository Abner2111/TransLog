:-include('DB.pl').
%sintagma_verbal(primera,singular,S0e,S0i,S):-verbo(primera, singular,S0e,S0i,S).
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

% Formado por un termino que funcione como nucleo acompañado de otras palabras que lo modifican

sintagma_nominal(ES,EN, S):- determinante(GENERO, NUMERO, ES, EN1, S1), sustantivo(GENERO, NUMERO, S1, EN2, S), primero(EN1, P), concatenar(P,EN2, EN).
sintagma_nominal(ES,EN, S):- determinante(GENERO, NUMERO, ES1, EN, S1), sustantivo(GENERO, NUMERO, ES2, S1, S), primero(ES1, P), concatenar(P,ES2, ES).

sintagma_nominal(ES, EN, S):- determinante(GENERO, NUMERO, ES, EN1, S1), sustantivo(GENERO, NUMERO, S1, EN2, S2), adjetivo(GENERO, NUMERO, S2, EN3, S), primero(EN1, P1), primero(EN2, P2), concatenar(P1, P2, R), concatenar(R, EN3, EN).
sintagma_nominal(ES, EN, S):- determinante(GENERO, NUMERO, ES1, EN, S1), sustantivo(GENERO, NUMERO, ES2, S1, S2), adjetivo(GENERO, NUMERO, ES3, S2, S), primero(ES1, P1), primero(ES2, P2), concatenar(P1, P2, R), concatenar(R, ES3, ES).

sintagma_nominal(ES, EN, S):- determinante(GENERO, NUMERO, ES, EN1, S1), adjetivo(GENERO, NUMERO, S1, EN2, S2), sustantivo(GENERO, NUMERO, S2, EN3, S), primero(EN1, P1), primero(EN2, P2), concatenar(P1, P2, R), concatenar(R, EN3, EN).
sintagma_nominal(ES, EN, S):- determinante(GENERO, NUMERO, ES1, EN, S1), adjetivo(GENERO, NUMERO, ES2, S1, S2), sustantivo(GENERO, NUMERO, ES3, S2, S), primero(ES1, P1), primero(ES2, P2), concatenar(P1, P2, R), concatenar(R, ES3, ES).

sintagma_nominal(ES,EN, S):- sustantivo(GENERO, NUMERO, ES, EN1, S1), adjetivo(GENERO, NUMERO, S1, EN2, S), primero(EN1, P), concatenar(P,EN2, EN).
sintagma_nominal(ES, EN, S):- sustantivo(GENERO, NUMERO, ES1, EN, S1), adjetivo(GENERO, NUMERO, ES2, S1, S), primero(ES1, P), concatenar(P,ES2, ES).

sintagma_nominal(ES,EN, S):- adjetivo(GENERO, NUMERO, ES, EN1, S1), sustantivo(GENERO, NUMERO, S1, EN2, S), primero(EN1, P), concatenar(P,EN2, EN).
sintagma_nominal(ES, EN, S):- adjetivo(GENERO, NUMERO, ES1, EN, S1), sustantivo(GENERO, NUMERO, ES2, S1, S), primero(ES1, P), concatenar(P,ES2, ES).


% Sintagma verbal

%Solamente verbo

sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES, EN, S).

%Verbo y un adjetivo

sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES, EN1, S1), adjetivo(GENERO, NUMERO, S1, EN2, S), primero(EN1, P), concatenar(P,EN2, EN).
sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES1, EN, S1), adjetivo(GENERO, NUMERO, ES2, S1, S), primero(ES1, P), concatenar(P,ES2, EN).

%Verbo y sintagma nominal

%sintagma_verbal(ES, EN, S):- verbo(PERSONA, NUMERO, ES, EN1, S1), sintagma_nominal(S1, EN2), primero(EN1, P), concatenar(P,EN2, EN).

%Sintagma verbal solo con verbo
