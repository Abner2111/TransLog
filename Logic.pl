?-consult('BNF.pl').

translog():-read(X), 
tokenize_atom(X, Y),
((sustantivo(Y,Z,[]); (sustantivo(Z, Y,[])))),
atomics_to_string(Z, '', Output), 
write(Output),write('\n'),translog().
