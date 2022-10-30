?-consult('DB.pl').
sintagma_verbal(S0,I,S):-verbo(S0,I,S).
sintagma_nominal(S0,S,I0,I):-determinante(S0, S1, I0, I1),sustantivo(S1, S, I1, I).