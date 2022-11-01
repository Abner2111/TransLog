:-include('DB.pl').
sintagma_verbal(primera,singular,S0e,S0i,S):-verbo(primera, singular,S0e,S0i,S).
%sintagma_verbal(segunda,singular,S0,S):-
%sintagma_nominal(S0,S,I0,I):-determinante(S0, S1, I0, I1),sustantivo(S1, S, I1, I).


% Sintagma nominal
% Valida si es una estructura que tiene un sustantivo, pronombre como nucleo

% Formado por un sustantivo o pronombre unico

sintagma_nominal(ES, EN):- pronombre(GENERO, NUMERO, ES, EN, S).
sintagma_nominal(ES, EN):- sustantivo(GENERO, NUMERO, ES, EN, S).

% Formado por un término que funcione como núcleo acompañado de otras palabras que lo modifican

sintagma_nominal(ES, EN):- determinante(GENERO, NUMERO, ES, EN, S), sustantivo(GENERO, NUMERO, ES, EN, S). 
sintagma_nominal(ES, EN):- determinante(GENERO, NUMERO, ES, EN, S), sustantivo(GENERO, NUMERO, ES, EN, S), adjetivo(GENERO, NUMERO, ES, EN, S).
sintagma_nominal(ES, EN):- determinante(GENERO, NUMERO, ES, EN, S), adjetivo(GENERO, NUMERO, ES, EN, S), sustantivo(GENERO, NUMERO, ES, EN, S).
sintagma_nominal(ES, EN):- sustantivo(GENERO, NUMERO, ES, EN, S), adjetivo(GENERO, NUMERO, ES, EN, S).
sintagma_nominal(ES, EN):- adjetivo(GENERO, NUMERO, ES, EN, S), sustantivo(GENERO, NUMERO, ES, EN, S).

% Sintagma verbal
