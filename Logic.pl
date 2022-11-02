?-consult('BNF.pl').

translog():-
write('Hola, mi nombre es TransLog. Traduzco entre espanol e ingles\n'),
write('Opcion A: Espanol->Ingles\n'),
write('Opcion B: Ingles->Espanol\n'),
write('Escriba A o B de acuerdo a lo que desee hacer\n'),
read(Opcion),
opcion(Opcion, Respuesta),
write(Respuesta)
.

opcion('A','Excelente, escribe tu oracion es espanol: ').
opcion('B','Excellent, write your sentence in english: ').

oracion(X, Y):- 