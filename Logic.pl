?-consult('BNF.pl').

translog():-
write('Hola, mi nombre es TransLog. Traduzco entre espanol e ingles\n'),
write('Opcion A: Espanol->Ingles\n'),
write('Opcion B: Ingles->Espanol\n'),
write('Escriba A o B de acuerdo a lo que desee hacer\n'),
read(Opcion),
opcion(Opcion, Respuesta),
write(Respuesta),
read(Oracion),
string_lower(Oracion, OracionMinuscula),
tokenize_atom(OracionMinuscula, OracionTokenizada),
(   ((Oracion = 'Exit'), translog(despedida),!);
    translate(Opcion, OracionTokenizada, Traduccion),
    atomic_list_concat(Traduccion, ' ', Salida),
    write('Tu traduccion es: '),
    write(Salida),
    write('\n'),
    translog(Opcion, repeticion); 
    translog('A',fallo))
.

translog(Opcion,fallo):-
write('La oracion no es valida en el idioma escogido, intenta de nuevo'),
read(Oracion),
string_lower(Oracion, OracionMinuscula),
tokenize_atom(OracionMinuscula, OracionTokenizada),
((
    (Oracion = 'Exit'), translog(despedida),!
);translate(Opcion, OracionTokenizada, Traduccion),!; translog('A',fallo)),
atomic_list_concat(Traduccion, ' ', Salida),
write('Tu traduccion es: '),
write(Salida),
write('\n'),
translog(Opcion, repeticion).

translog(Opcion, repeticion):-
write('Si deseas traducir algo mas, puedes hacerlo'),
read(Oracion),
string_lower(Oracion, OracionMinuscula),
tokenize_atom(OracionMinuscula, OracionTokenizada),
(
(
    (Oracion = 'Exit'), translog(despedida),!
);
(
    translate(Opcion, OracionTokenizada, Traduccion),atomic_list_concat(Traduccion, ' ', Salida),
    write('Tu traduccion es: '),
    write(Salida),
    write('\n'),
    translog(Opcion, repeticion)
),!; 
translog('A',fallo)).

translog(despedida):-
write('Hasta luego, Bye Bye!'),!.
opcion('A','Excelente, escribe tu oracion en espanol: ').
opcion('B','Excelente, escribe tu oracion en ingles: ').
translate('A',Entrada, Salida):-oracion(Entrada,Salida).
translate('B',Entrada, Salida):-oracion(Salida, Entrada).