
%50 sustantivos
%10 verbos
%
%gramaticas->BNF.db
%banco de verbos, frases->DB.db
%logica(unir base de datos con gramaticas, obtener input de usuario,interfaz)->Logic.db

%saludo(saludoespanol, saludoingles)
saludo(['Pura vida'|S], ['Everything going good'|S],S).
saludo(['Tuanis'|S],['Everything going good',S],S).
%despedida(despedidaespanol, despedidaingles)
despedida(['Chao'|S], ['Bye Bye'|S],S).
despedida(['Nos vemos'|S], ['See you later'|S],S).
%frase(fraseespanol, )

frase(['Cuantos años tienes?'|S],['How old are you?'|S],S).
%determinantes
determinante(['el'|S], Se, ['the'|S], Si).
%verbos
verbo(['come'|S],['eats'],S).
%sustantivos(espanol, ingles, resto de la lista)
sustantivo(['hombre'|Se],Se,['man'|Si],Si).