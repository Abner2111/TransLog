
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

% Pronombres
pronombre(masculino, singular, ['yo'], ['i']).
pronombre(femenino, singular, ['yo'], ['i']).
pronombre(masculino, singular, ['tu'], ['you']).
pronombre(femenino, singular, ['tu'], ['you']).
pronombre(masculino, singular, ['eel'], ['he']).
pronombre(femenino, singular, ['ella'], ['she']).
pronombre(masculino, singular, ['ello'], ['it']).
pronombre(femenino, singular, ['ello'], ['it']).
pronombre(masculino, plural, ['nosotros'], ['we']).
pronombre(masculino, plural, ['vosotros'], ['you']).
pronombre(masculino, plural, ['ellos'], ['they']).
pronombre(plural, femenino, ['ellas'], ['they']).


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

verbo(primera, singular, ['vengo'|S], ['come'|S],S).
verbo(segunda, singular, ['vienes'|S], ['come'|S],S).
verbo(tercera, singular, ['viene'|S], ['comes'|S],S).
verbo(primera, plural, ['venimos'|S], ['come'|S],S).
verbo(segunda, plural, ['vienen'|S], ['come'|S],S).
verbo(tercera, plural, ['vienen'|S], ['come'|S],S).

%---Hacer

verbo(primera, singular, ['hago'|S], ['do'|S],S).
verbo(segunda, singular, ['haces'|S], ['do'|S],S).
verbo(tercera, singular, ['hace'|S], ['does'|S],S).
verbo(primera, plural, ['hacemos'|S], ['do'|S],S).
verbo(segunda, plural, ['hacen'|S], ['do'|S],S).
verbo(tercera, plural, ['hacen'|S], ['do'|S],S).

%sustantivos.
sustantivo(['hombre'|S],['man'|S],S).

%ADJETIVOS

%alto
adjetivo(masculino, singular,['alto'|S],['tall'|S]).
adjetivo(masculino, plural,['altos'|S],['tall'|S])
adjetivo(femenino, singular,['alta'|S],['tall'|S]).
adjetivo(femenino, plural,['altas'|S],['tall'|S])

%bajo
adjetivo(masculino, singular,['bajo'|S],['short'|S]).
adjetivo(masculino, plural,['bajos'|S],['short'|S])
adjetivo(femenino, singular,['baja'|S],['short'|S]).
adjetivo(femenino, plural,['bajas'|S],['short'|S])

%blanco
adjetivo(masculino, singular,['blanco'|S],['white'|S]).
adjetivo(masculino, plural,['blancos'|S],['white'|S])
adjetivo(femenino, singular,['blanca'|S],['white'|S]).
adjetivo(femenino, plural,['blancas'|S],['white'|S])

%rojo
adjetivo(masculino, singular,['rojo'|S],['red'|S]).
adjetivo(masculino, plural,['rojos'|S],['red'|S])
adjetivo(femenino, singular,['roja'|S],['red'|S]).
adjetivo(femenino, plural,['rojas'|S],['red'|S])

%negro
adjetivo(masculino, singular,['negro'|S],['black'|S]).
adjetivo(masculino, plural,['negros'|S],['black'|S])
adjetivo(femenino, singular,['negra'|S],['black'|S]).
adjetivo(femenino, plural,['negras'|S],['black'|S])

%verde
adjetivo(masculino, singular,['verde'|S],['green'|S]).
adjetivo(masculino, plural,['verdes'|S],['green'|S])
adjetivo(femenino, singular,['verde'|S],['green'|S]).
adjetivo(femenino, plural,['verdes'|S],['green'|S])

%azul
adjetivo(masculino, singular,['azul'|S],['blue'|S]).
adjetivo(masculino, plural,['azules'|S],['blue'|S])
adjetivo(femenino, singular,['azul'|S],['blue'|S]).
adjetivo(femenino, plural,['azules'|S],['blue'|S])

%amarillo 
adjetivo(masculino, singular,['amarillo'|S],['yellow'|S]).
adjetivo(masculino, plural,['amarillos'|S],['yellow'|S])
adjetivo(femenino, singular,['amarilla'|S],['yellow'|S]).
adjetivo(femenino, plural,['amaarillas'|S],['yellow'|S])

%bonito
adjetivo(masculino, singular,['bonito'|S],['pretty'|S]).
adjetivo(masculino, plural,['bonitos'|S],['pretty'|S])
adjetivo(femenino, singular,['bonita'|S],['pretty'|S]).
adjetivo(femenino, plural,['bonitas'|S],['pretty'|S])

%feo
adjetivo(masculino, singular,['feo'|S],['ugly'|S]).
adjetivo(masculino, plural,['feos'|S],['ugly'|S])
adjetivo(femenino, singular,['fea'|S],['ugly'|S]).
adjetivo(femenino, plural,['feas'|S],['ugly'|S])

%facil
adjetivo(masculino, singular,['fácil'|S],['easy'|S]).
adjetivo(masculino, plural,['faciles'|S],['easy'|S])
adjetivo(femenino, singular,['fácil'|S],['easy'|S]).
adjetivo(femenino, plural,['faciles'|S],['easy'|S])

%dificil
adjetivo(masculino, singular,['dificil'|S],['hard'|S]).
adjetivo(masculino, plural,['dificiles'|S],['hard'|S])
adjetivo(femenino, singular,['dificil'|S],['hard'|S]).
adjetivo(femenino, plural,['dificiles'|S],['hard'|S])

%fuerte
adjetivo(masculino, singular,['fuerte'|S],['strong'|S]).
adjetivo(masculino, plural,['fuertes'|S],['strong'|S])
adjetivo(femenino, singular,['fuerte'|S],['strong'|S]).
adjetivo(femenino, plural,['fuertes'|S],['strong'|S])

%debil
adjetivo(masculino, singular,['debil'|S],['weak'|S]).
adjetivo(masculino, plural,['debiles'|S],['weak'|S])
adjetivo(femenino, singular,['debil'|S],['weak'|S]).
adjetivo(femenino, plural,['debiles'|S],['weak'|S])
/*
adjetivo(masculino, singular,['adj'|S],['adj'|S]).
adjetivo(masculino, plural,['adj'|S],['adj'|S])
adjetivo(femenino, singular,['adj'|S],['adj'|S]).
adjetivo(femenino, plural,['adj'|S],['adj'|S])*/