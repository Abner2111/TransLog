?-consult('DB.pl').
sintagma_verbal(primera,singular,S0e,S0i,S):-verbo(primera, singular,S0e,S0i,S).
%sintagma_verbal(segunda,singular,S0,S):-
sintagma_nominal(S0,S,I0,I):-determinante(S0, S1, I0, I1),sustantivo(S1, S, I1, I).