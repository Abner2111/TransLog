
%50 sustantivos
%10 verbos
%
%gramaticas->BNF.db
%banco de verbos, frases->DB.db
%logica(unir base de datos con gramaticas, obtener input de usuario,interfaz)->Logic.db

%saludo(saludoespanol, saludoingles)
saludo(['Pura vida'|S], ['Everything going good'|S],S).
saludo(['Tuanis',|S],['Everything going good',S],S).
%despedida(despedidaespanol, despedidaingles)
despedida(['Chao'|S], ['Bye Bye'|S],S).
despedida(['Nos vemos'|S], ['See you later'|S],S).
%frase(fraseespanol, )

%verbos estructura (persona, numero, palabra en españo, palabra en ingles)

%---ser

verbo(primera, singular, ['estoy'|S], ['am'|S],S).
verbo(segunda, singular, ['estas'|S], ['are'|S],S).
verbo(tercera, singular, ['está'|S], ['is'|S],S).
verbo(primera, plural, ['estamos'|S], ['are'|S],S).
verbo(segunda, plural, ['estaís'|S], ['are'|S],S).
verbo(tercera, plural, ['están'|S], ['are'|S],S).

%---tener

verbo(primera, singular, ['tengo'|S], ['have'|S],S).
verbo(segunda, singular, ['tienes'|S], ['have'|S],S).
verbo(tercera, singular, ['tiene'|S], ['has'|S],S).
verbo(primera, plural, ['tenemos'|S], ['have'|S],S).
verbo(segunda, plural, ['tenéis'|S], ['have'|S],S).
verbo(tercera, plural, ['tienen'|S], ['have'|S],S).

%---preguntar

verbo(primera, singular, ['pregunto'|S], ['ask'|S],S).
verbo(segunda, singular, ['preguntas'|S], ['ask'|S],S).
verbo(tercera, singular, ['pregunta'|S], ['asks'|S],S).
verbo(primera, plural, ['preguntamos'|S], ['ask'|S],S).
verbo(segunda, plural, ['preguntáis'|S], ['ask'|S],S).
verbo(tercera, plural, ['preguntan'|S], ['ask'|S],S).

%---llamar

verbo(primera, singular, ['llamo'|S], ['call'|S],S).
verbo(segunda, singular, ['llamas'|S], ['call'|S],S).
verbo(tercera, singular, ['llama'|S], ['calls'|S],S).
verbo(primera, plural, ['llamamos'|S], ['call'|S],S).
verbo(segunda, plural, ['llamaís'|S], ['call'|S],S).
verbo(tercera, plural, ['llaman'|S], ['call'|S],S).

%---Tomar

verbo(primera, singular, ['tomo'|S], ['take'|S],S).
verbo(segunda, singular, ['tomas'|S], ['take'|S],S).
verbo(tercera, singular, ['toma'|S], ['takes'|S],S).
verbo(primera, plural, ['tomamos'|S], ['take'|S],S).
verbo(segunda, plural, ['tomáis'|S], ['take'|S],S).
verbo(tercera, plural, ['toman'|S], ['take'|S],S).

%---Comer

verbo(primera, singular, ['como'|S], ['eat'|S],S).
verbo(segunda, singular, ['comes'|S], ['eat'|S],S).
verbo(tercera, singular, ['come'|S], ['eats'|S],S).
verbo(primera, plural, ['comemos'|S], ['eat'|S],S).
verbo(segunda, plural, ['comeís'|S], ['eat'|S],S).
verbo(tercera, plural, ['comen'|S], ['eat'|S],S).

%---dar

verbo(primera, singular, ['doy'|S], ['give'|S],S).
verbo(segunda, singular, ['das'|S], ['give'|S],S).
verbo(tercera, singular, ['da'|S], ['gives'|S],S).
verbo(primera, plural, ['damos'|S], ['give'|S],S).
verbo(segunda, plural, ['dáis'|S],['give'|S],S).
verbo(tercera, plural, ['dan'|S], ['give'|S],S).

%---ir

verbo(primera, singular, ['voy'|S], ['go'|S],S).
verbo(segunda, singular, ['vas'|S], ['go'|S],S).
verbo(tercera, singular, ['va'|S], ['goes'|S],S).
verbo(primera, plural, ['vamos'|S], ['go'|S],S).
verbo(segunda, plural, ['vais'|S], ['go'|S],S).
verbo(tercera, plural, ['van'|S], ['go'|S],S).

%---saber

verbo(primera, singular, ['sé'|S], ['know'|S],S).
verbo(segunda, singular, ['sabes'|S], ['know'|S],S).
verbo(tercera, singular, ['sabe'|S], ['knows'|S],S).
verbo(primera, plural, ['sabemos'|S], ['know'|S],S).
verbo(segunda, plural, ['sabéis'|S], ['know'|S],S).
verbo(tercera, plural, ['saben'|S], ['know'|S],S).

%---mirar

verbo(primera, singular, ['miro'|S], ['watch'|S],S).
verbo(segunda, singular, ['miras'|S], ['watch'|S],S).
verbo(tercera, singular, ['mira'|S], ['watches'|S],S).
verbo(primera, plural, ['miramos'|S], ['watch'|S],S).
verbo(segunda, plural, ['miráis'|S], ['watch'|S],S).
verbo(tercera, plural, ['miran'|S], ['watch'|S],S).

%---decir

verbo(primera, singular, ['digo'|S], ['say'|S],S).
verbo(segunda, singular, ['dices'|S], ['say'|S],S).
verbo(tercera, singular, ['dice'|S], ['says'|S],S).
verbo(primera, plural, ['decimos'|S], ['say'|S],S).
verbo(segunda, plural, ['decís'|S], ['say'|S],S).
verbo(tercera, plural, ['dicen'|S], ['say'|S],S).

%---ver

verbo(primera, singular, ['veo'|S], ['see'|S],S).
verbo(segunda, singular, ['ves'|S], ['see'|S],S).
verbo(tercera, singular, ['ve'|S], ['sees'|S],S).
verbo(primera, plural, ['vemos'|S], ['see'|S],S).
verbo(segunda, plural, ['veis'|S], ['see'|S],S).
verbo(tercera, plural, ['ven'|S], ['see'|S],S).

%---pensar

verbo(primera, singular, ['pienso'|S], ['think'|S],S).
verbo(segunda, singular, ['piensas'|S], ['think'|S],S).
verbo(tercera, singular, ['piensa'|S], ['thinks'|S],S).
verbo(primera, plural, ['pensamos'|S], ['think'|S],S).
verbo(segunda, plural, ['pensáis'|S], ['think'|S],S).
verbo(tercera, plural, ['piensan'|S], ['think'|S],S).

%---usar

verbo(primera, singular, ['uso'|S], ['use'|S],S).
verbo(segunda, singular, ['usas'|S], ['use'|S],S).
verbo(tercera, singular, ['usa'|S], ['uses'|S],S).
verbo(primera, plural, ['usamos'|S], ['use'|S],S).
verbo(segunda, plural, ['usáis'|S], ['use'|S],S).
verbo(tercera, plural, ['usan'|S], ['use'|S],S).

%---querer

verbo(primera, singular, ['quiero'|S], ['want'|S],S).
verbo(segunda, singular, ['quieres'|S], ['want'|S],S).
verbo(tercera, singular, ['quiere'|S], ['wants'|S],S).
verbo(primera, plural, ['queremos'|S], ['want'|S],S).
verbo(segunda, plural, ['queréis'|S], ['want'|S],S).
verbo(tercera, plural, ['quieren'|S], ['want'|S],S).

%---trabajar

verbo(primera, singular, ['trabajo'|S], ['work'|S],S).
verbo(segunda, singular, ['trabajas'|S], ['work'|S],S).
verbo(tercera, singular, ['trabaja'|S], ['works'|S],S).
verbo(primera, plural, ['trabajamos'|S], ['work'|S],S).
verbo(segunda, plural, ['trabajáis'|S], ['work'|S],S).
verbo(tercera, plural, ['trabajan'|S], ['work'|S],S).

%---venir

%---Hacer

%sustantivos.
sustantivo(['hombre'|S],['man'|S],S).
