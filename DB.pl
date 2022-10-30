
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

%verbos estructura (persona, numero, palabra en españo, palabra en ingles)

%---ser

verbo(primera, singular, ["estoy"], ["am"]).
verbo(segunda, singular, ["estas"], ["are"]).
verbo(tercera, singular, ["está"], ["is"]).
verbo(primera, plural, ["estamos"], ["are"]).
verbo(segunda, plural, ["estaís"], ["are"]).
verbo(tercera, plural, ["están"], ["are"]).

%---tener

verbo(primera, singular, ["tengo"], ["have"]).
verbo(segunda, singular, ["tienes"], ["have"]).
verbo(tercera, singular, ["tiene"], ["has"]).
verbo(primera, plural, ["tenemos"], ["have"]).
verbo(segunda, plural, ["tenéis"], ["have"]).
verbo(tercera, plural, ["tienen"], ["have"]).

%---preguntar

verbo(primera, singular, ["pregunto"], ["ask"]).
verbo(segunda, singular, ["preguntas"], ["ask"]).
verbo(tercera, singular, ["pregunta"], ["asks"]).
verbo(primera, plural, ["preguntamos"], ["ask"]).
verbo(segunda, plural, ["preguntáis"], ["ask"]).
verbo(tercera, plural, ["preguntan"], ["ask"]).

%---llamar

verbo(primera, singular, ["llamo"], ["call"]).
verbo(segunda, singular, ["llamas"], ["call"]).
verbo(tercera, singular, ["llama"], ["calls"]).
verbo(primera, plural, ["llamamos"], ["call"]).
verbo(segunda, plural, ["llamaís"], ["call"]).
verbo(tercera, plural, ["llaman"], ["call"]).

%---Tomar

verbo(primera, singular, ["tomo"], ["take"]).
verbo(segunda, singular, ["tomas"], ["take"]).
verbo(tercera, singular, ["toma"], ["takes"]).
verbo(primera, plural, ["tomamos"], ["take"]).
verbo(segunda, plural, ["tomáis"], ["take"]).
verbo(tercera, plural, ["toman"], ["take"]).

%---Comer

verbo(primera, singular, ["como"], ["eat"]).
verbo(segunda, singular, ["comes"], ["eat"]).
verbo(tercera, singular, ["come"], ["eats"]).
verbo(primera, plural, ["comemos"], ["eat"]).
verbo(segunda, plural, ["comeís"], ["eat"]).
verbo(tercera, plural, ["comen"], ["eat"]).

%---dar

verbo(primera, singular, ["doy"], ["give"]).
verbo(segunda, singular, ["das"], ["give"]).
verbo(tercera, singular, ["da"], ["gives"]).
verbo(primera, plural, ["damos"], ["give"]).
verbo(segunda, plural, ["dáis"], ["give"]).
verbo(tercera, plural, ["dan"], ["give"]).

%---ir

verbo(primera, singular, ["voy"], ["go"]).
verbo(segunda, singular, ["vas"], ["go"]).
verbo(tercera, singular, ["va"], ["goes"]).
verbo(primera, plural, ["vamos"], ["go"]).
verbo(segunda, plural, ["vais"], ["go"]).
verbo(tercera, plural, ["van"], ["go"]).

%---saber

verbo(primera, singular, ["sé"], ["know"]).
verbo(segunda, singular, ["sabes"], ["know"]).
verbo(tercera, singular, ["sabe"], ["knows"]).
verbo(primera, plural, ["sabemos"], ["know"]).
verbo(segunda, plural, ["sabéis"], ["know"]).
verbo(tercera, plural, ["saben"], ["know"]).

%---mirar

verbo(primera, singular, ["miro"], ["watch"]).
verbo(segunda, singular, ["miras"], ["watch"]).
verbo(tercera, singular, ["mira"], ["watches"]).
verbo(primera, plural, ["miramos"], ["watch"]).
verbo(segunda, plural, ["miráis"], ["watch"]).
verbo(tercera, plural, ["miran"], ["watch"]).

%---decir

verbo(primera, singular, ["digo"], ["say"]).
verbo(segunda, singular, ["dices"], ["say"]).
verbo(tercera, singular, ["dice"], ["says"]).
verbo(primera, plural, ["decimos"], ["say"]).
verbo(segunda, plural, ["decís"], ["say"]).
verbo(tercera, plural, ["dicen"], ["say"]).

%---ver

verbo(primera, singular, ["veo"], ["see"]).
verbo(segunda, singular, ["ves"], ["see"]).
verbo(tercera, singular, ["ve"], ["sees"]).
verbo(primera, plural, ["vemos"], ["see"]).
verbo(segunda, plural, ["veis"], ["see"]).
verbo(tercera, plural, ["ven"], ["see"]).

%---pensar

verbo(primera, singular, ["pienso"], ["think"]).
verbo(segunda, singular, ["piensas"], ["think"]).
verbo(tercera, singular, ["piensa"], ["thinks"]).
verbo(primera, plural, ["pensamos"], ["think"]).
verbo(segunda, plural, ["pensáis"], ["think"]).
verbo(tercera, plural, ["piensan"], ["think"]).

%---usar

verbo(primera, singular, ["uso"], ["use"]).
verbo(segunda, singular, ["usas"], ["use"]).
verbo(tercera, singular, ["usa"], ["uses"]).
verbo(primera, plural, ["usamos"], ["use"]).
verbo(segunda, plural, ["usáis"], ["use"]).
verbo(tercera, plural, ["usan"], ["use"]).

%---querer

verbo(primera, singular, ["quiero"], ["want"]).
verbo(segunda, singular, ["quieres"], ["want"]).
verbo(tercera, singular, ["quiere"], ["wants"]).
verbo(primera, plural, ["queremos"], ["want"]).
verbo(segunda, plural, ["queréis"], ["want"]).
verbo(tercera, plural, ["quieren"], ["want"]).

%---trabajar

verbo(primera, singular, ["trabajo"], ["work"]).
verbo(segunda, singular, ["trabajas"], ["work"]).
verbo(tercera, singular, ["trabaja"], ["works"]).
verbo(primera, plural, ["trabajamos"], ["work"]).
verbo(segunda, plural, ["trabajáis"], ["work"]).
verbo(tercera, plural, ["trabajan"], ["work"]).

%---venir

%---Hacer

%sustantivos.
sustantivo(['hombre'|Se],Se,['man'|Si],Si).
