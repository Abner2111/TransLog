
%50 sustantivos
%10 verbos
%
%gramaticas->BNF.db
%banco de verbos, frases->DB.db
%logica(unir base de datos con gramaticas, obtener input de usuario,interfaz)->Logic.db

%saludo(saludoespanol, saludoingles)
saludo(['pura', 'vida'|S], [['everything','going', 'good']|S],S).
saludo(['tuanis'|S],['everything','going', 'good'|S],S).
saludo(['hola'|S], ['hello'|S], S).
%despedida(despedidaespanol, despedidaingles)
despedida(['chao'|S], ['bye'|S],S).
despedida(['nos', 'vemos'|S], ['see', 'you', 'later'|S],S).
%frase(fraseespanol, )

frase(['cuantos', 'anos', 'tienes?'|S], ['how','old','are','you?'], S).
frase(['como', 'estas?'|S], ['how','are','you?'|S],S).
frase(['de', 'donde', 'eres?'|S], ['where','are','you', 'from?'|S],S).
frase(['donde', 'trabajas?'|S], ['where','do','you', 'work?' |S],S).
frase(['estas', 'casado?'|S], ['are','you','married?'|S],S).
frase(['que', 'estas', 'haciendo?'|S], ['what','are','you', 'doing?' |S],S).
frase(['romper'|S],['Break','off'|S],S).
frase(['entrar'|S],['get','in'|S],S).
frase(['abandonar'|S],['give','up'|S],S).
frase(['encender'|S],['turn','on'|S],S).

%determinantes
determinante(masculino, singular,  ['el'|S],['the'|S],S).
determinante(masculino, plural, ['los'|S],['the'|S],S).
determinante(femenino, singular, ['la'|S],['the'|S],S).
determinante(femenino, plural, ['las'|S],['the'|S],S).


% Pronombres
% Estructura pronombre(genero, numero, palabra en español, palabra en ingles)


pronombre(neutro, singular, ['yo'|S], ['i'|S],S).
pronombre(neutro, singular, ['tu'|S], ['you'|S],S).
pronombre(masculino, singular, ['el'|S], ['he'|S],S).
pronombre(femenino, singular, ['ella'|S], ['she'|S],S).
pronombre(neutro, singular, ['ello'|S], ['it'|S],S).
pronombre(masculino, plural, ['nosotros'|S], ['we'|S],S).
pronombre(masculino, plural, ['ustedes'|S], ['you'|S],S).
pronombre(masculino, plural, ['ellos'|S], ['they'|S],S).
pronombre(femenino, plural,['ellas'|S], ['they'|S],S).


% Verbos
% Estructura (persona, numero, palabra en españo, palabra en ingles)

%verbo Primera persona singular

verbo(primera, singular, ['estoy'|S], ['am'|S],S).
verbo(primera, singular, ['tengo'|S], ['have'|S],S).
verbo(primera, singular, ['pregunto'|S], ['ask'|S],S).
verbo(primera, singular, ['llamo'|S], ['call'|S],S).
verbo(primera, singular, ['tomo'|S], ['take'|S],S).
verbo(primera, singular, ['como'|S], ['eat'|S],S).
verbo(primera, singular, ['doy'|S], ['give'|S],S).
verbo(primera, singular, ['voy'|S], ['go'|S],S).
verbo(primera, singular, ['se'|S], ['know'|S],S).
verbo(primera, singular, ['miro'|S], ['watch'|S],S).
verbo(primera, singular, ['digo'|S], ['say'|S],S).
verbo(primera, singular, ['veo'|S], ['see'|S],S).
verbo(primera, singular, ['pienso'|S], ['think'|S],S).
verbo(primera, singular, ['uso'|S], ['use'|S],S).
verbo(primera, singular, ['quiero'|S], ['want'|S],S).
verbo(primera, singular, ['trabajo'|S], ['work'|S],S).
verbo(primera, singular, ['vengo'|S], ['come'|S],S).
verbo(primera, singular, ['hago'|S], ['do'|S],S).
verbo(primera, singular, ['corro'|S], ['run'|S],S).
verbo(primera, singular, ['abro'|S], ['open'|S],S).
verbo(primera, singular, ['asesino'|S], ['murder'|S],S).
verbo(primera, singular, ['muevo'|S], ['move'|S],S).

%verbo Segunda persona singular

verbo(segunda, singular, ['estas'|S], ['are'|S],S).
verbo(segunda, singular, ['tienes'|S], ['have'|S],S).
verbo(segunda, singular, ['preguntas'|S], ['ask'|S],S).
verbo(segunda, singular, ['llamas'|S], ['call'|S],S).
verbo(segunda, singular, ['tomas'|S], ['take'|S],S).
verbo(segunda, singular, ['comes'|S], ['eat'|S],S).
verbo(segunda, singular, ['das'|S], ['give'|S],S).
verbo(segunda, singular, ['vas'|S], ['go'|S],S).
verbo(segunda, singular, ['sabes'|S], ['know'|S],S).
verbo(segunda, singular, ['miras'|S], ['watch'|S],S).
verbo(segunda, singular, ['dices'|S], ['say'|S],S).
verbo(segunda, singular, ['ves'|S], ['see'|S],S).
verbo(segunda, singular, ['piensas'|S], ['think'|S],S).
verbo(segunda, singular, ['usas'|S], ['use'|S],S).
verbo(segunda, singular, ['quieres'|S], ['want'|S],S).
verbo(segunda, singular, ['trabajas'|S], ['work'|S],S).
verbo(segunda, singular, ['vienes'|S], ['come'|S],S).
verbo(segunda, singular, ['haces'|S], ['do'|S],S).
verbo(segunda, singular, ['corres'|S], ['run'|S],S).
verbo(segunda, singular, ['abres'|S], ['open'|S],S).
verbo(segunda, singular, ['asesinas'|S], ['murder'|S],S).
verbo(segunda, singular, ['mueves'|S], ['move'|S],S).

%verbo Tercera persona singular
verbo(tercera, singular, ['esta'|S], ['is'|S],S).
verbo(tercera, singular, ['tiene'|S], ['has'|S],S).
verbo(tercera, singular, ['pregunta'|S], ['asks'|S],S).
verbo(tercera, singular, ['llama'|S], ['calls'|S],S).
verbo(tercera, singular, ['toma'|S], ['takes'|S],S).
verbo(tercera, singular, ['come'|S], ['eats'|S],S).
verbo(tercera, singular, ['da'|S], ['gives'|S],S).
verbo(tercera, singular, ['va'|S], ['goes'|S],S).
verbo(tercera, singular, ['sabe'|S], ['knows'|S],S).
verbo(tercera, singular, ['mira'|S], ['watches'|S],S).
verbo(tercera, singular, ['dice'|S], ['says'|S],S).
verbo(tercera, singular, ['ve'|S], ['sees'|S],S).
verbo(tercera, singular, ['piensa'|S], ['thinks'|S],S).
verbo(tercera, singular, ['usa'|S], ['uses'|S],S).
verbo(tercera, singular, ['quiere'|S], ['wants'|S],S).
verbo(tercera, singular, ['trabaja'|S], ['works'|S],S).
verbo(tercera, singular, ['viene'|S], ['comes'|S],S).
verbo(tercera, singular, ['hace'|S], ['does'|S],S).
verbo(tercera, singular, ['corre'|S], ['runs'|S],S).
verbo(tercera, singular, ['abre'|S], ['opens'|S],S).
verbo(tercera, singular, ['asesina'|S], ['murders'|S],S).
verbo(tercera, singular, ['mueve'|S], ['moves'|S],S).

%verbo Primer persona plural
verbo(primera, plural, ['estamos'|S], ['are'|S],S).
verbo(primera, plural, ['tenemos'|S], ['have'|S],S).
verbo(primera, plural, ['preguntamos'|S], ['ask'|S],S).
verbo(primera, plural, ['llamamos'|S], ['call'|S],S).
verbo(primera, plural, ['tomamos'|S], ['take'|S],S).
verbo(primera, plural, ['comemos'|S], ['eat'|S],S).
verbo(primera, plural, ['damos'|S], ['give'|S],S).
verbo(primera, plural, ['vamos'|S], ['go'|S],S).
verbo(primera, plural, ['sabemos'|S], ['know'|S],S).
verbo(primera, plural, ['miramos'|S], ['watch'|S],S).
verbo(primera, plural, ['decimos'|S], ['say'|S],S).
verbo(primera, plural, ['vemos'|S], ['see'|S],S).
verbo(primera, plural, ['pensamos'|S], ['think'|S],S).
verbo(primera, plural, ['usamos'|S], ['use'|S],S).
verbo(primera, plural, ['queremos'|S], ['want'|S],S).
verbo(primera, plural, ['trabajamos'|S], ['work'|S],S).
verbo(primera, plural, ['venimos'|S], ['come'|S],S).
verbo(primera, plural, ['hacemos'|S], ['do'|S],S).
verbo(primera, plural, ['corremos'|S], ['run'|S],S).
verbo(primera, plural, ['abrimos'|S], ['open'|S],S).
verbo(primera, plural, ['asesinamos'|S], ['murder'|S],S).
verbo(primera, plural, ['movemos'|S], ['move'|S],S).

%verbo Segunda Persona Plural
verbo(segunda, plural, ['estan'|S], ['are'|S],S).
verbo(segunda, plural, ['tienen'|S], ['have'|S],S).
verbo(segunda, plural, ['preguntan'|S], ['ask'|S],S).
verbo(segunda, plural, ['llaman'|S], ['call'|S],S).
verbo(segunda, plural, ['toman'|S], ['take'|S],S).
verbo(segunda, plural, ['comen'|S], ['eat'|S],S).
verbo(segunda, plural, ['dan'|S],['give'|S],S).
verbo(segunda, plural, ['van'|S], ['go'|S],S).
verbo(segunda, plural, ['saben'|S], ['know'|S],S).
verbo(segunda, plural, ['miran'|S], ['watch'|S],S).
verbo(segunda, plural, ['dicen'|S], ['say'|S],S).
verbo(segunda, plural, ['ven'|S], ['see'|S],S).
verbo(segunda, plural, ['piensan'|S], ['think'|S],S).
verbo(segunda, plural, ['usan'|S], ['use'|S],S).
verbo(segunda, plural, ['quieren'|S], ['want'|S],S).
verbo(segunda, plural, ['trabajan'|S], ['work'|S],S).
verbo(segunda, plural, ['vienen'|S], ['come'|S],S).
verbo(segunda, plural, ['hacen'|S], ['do'|S],S).
verbo(segunda, plural, ['corren'|S], ['run'|S],S).
verbo(segunda, plural, ['abren'|S], ['open'|S],S).
verbo(segunda, plural, ['asesinan'|S], ['murder'|S],S).
verbo(segunda, plural, ['mueven'|S], ['move'|S],S).

%verbo Tercera persona Plural
verbo(tercera, plural, ['estan'|S], ['are'|S],S).
verbo(tercera, plural, ['tienen'|S], ['have'|S],S).
verbo(tercera, plural, ['preguntan'|S], ['ask'|S],S).
verbo(tercera, plural, ['llaman'|S], ['call'|S],S).
verbo(tercera, plural, ['toman'|S], ['take'|S],S).
verbo(tercera, plural, ['comen'|S], ['eat'|S],S).
verbo(tercera, plural, ['dan'|S], ['give'|S],S).
verbo(tercera, plural, ['van'|S], ['go'|S],S).
verbo(tercera, plural, ['saben'|S], ['know'|S],S).
verbo(tercera, plural, ['miran'|S], ['watch'|S],S).
verbo(tercera, plural, ['dicen'|S], ['say'|S],S).
verbo(tercera, plural, ['ven'|S], ['see'|S],S).
verbo(tercera, plural, ['piensan'|S], ['think'|S],S).
verbo(tercera, plural, ['usan'|S], ['use'|S],S).
verbo(tercera, plural, ['quieren'|S], ['want'|S],S).
verbo(tercera, plural, ['trabajan'|S], ['work'|S],S).
verbo(tercera, plural, ['vienen'|S], ['come'|S],S).
verbo(tercera, plural, ['hacen'|S], ['do'|S],S).
verbo(tercera, plural, ['corren'|S], ['run'|S],S).
verbo(tercera, plural, ['abren'|S], ['open'|S],S).
verbo(tercera, plural, ['asesinan'|S], ['murder'|S],S).
verbo(tercera, plural, ['mueven'|S], ['move'|S],S).
%ADJETIVOS

%Adjetivos masculino singular
adjetivo(masculino, singular,['alto'|S],['tall'|S], S).
adjetivo(masculino, singular,['bajo'|S],['short'|S], S).
adjetivo(masculino, singular,['blanco'|S],['white'|S], S).
adjetivo(masculino, singular,['rojo'|S],['red'|S], S).
adjetivo(masculino, singular,['negro'|S],['black'|S], S).
adjetivo(masculino, singular,['verde'|S],['green'|S], S).
adjetivo(masculino, singular,['azul'|S],['blue'|S], S).
adjetivo(masculino, singular,['amarillo'|S],['yellow'|S], S).
adjetivo(masculino, singular,['bonito'|S],['pretty'|S], S).
adjetivo(masculino, singular,['feo'|S],['ugly'|S], S).
adjetivo(masculino, singular,['facil'|S],['easy'|S], S).
adjetivo(masculino, singular,['dificil'|S],['hard'|S], S).
adjetivo(masculino, singular,['fuerte'|S],['strong'|S], S).
adjetivo(masculino, singular,['debil'|S],['weak'|S], S).

%adjetivos masculino plural
adjetivo(masculino, plural,['altos'|S],['tall'|S], S).
adjetivo(masculino, plural,['bajos'|S],['short'|S], S).
adjetivo(masculino, plural,['blancos'|S],['white'|S], S).
adjetivo(masculino, plural,['rojos'|S],['red'|S], S).
adjetivo(masculino, plural,['negros'|S],['black'|S], S).
adjetivo(masculino, plural,['verdes'|S],['green'|S], S).
adjetivo(masculino, plural,['azules'|S],['blue'|S], S).
adjetivo(masculino, plural,['amarillos'|S],['yellow'|S], S).
adjetivo(masculino, plural,['bonitos'|S],['pretty'|S], S).
adjetivo(masculino, plural,['feos'|S],['ugly'|S], S).
adjetivo(masculino, plural,['faciles'|S],['easy'|S], S).
adjetivo(masculino, plural,['dificiles'|S],['hard'|S], S).
adjetivo(masculino, plural,['fuertes'|S],['strong'|S], S).
adjetivo(masculino, plural,['debiles'|S],['weak'|S], S).

%Adjetivos femenino singular

adjetivo(femenino, singular,['alta'|S],['tall'|S], S).
adjetivo(femenino, singular,['baja'|S],['short'|S], S).
adjetivo(femenino, singular,['blanca'|S],['white'|S], S).
adjetivo(femenino, singular,['roja'|S],['red'|S], S).
adjetivo(femenino, singular,['negra'|S],['black'|S], S).
adjetivo(femenino, singular,['verde'|S],['green'|S], S).
adjetivo(femenino, singular,['azul'|S],['blue'|S], S).
adjetivo(femenino, singular,['amarilla'|S],['yellow'|S], S).
adjetivo(femenino, singular,['bonita'|S],['pretty'|S], S).
adjetivo(femenino, singular,['fea'|S],['ugly'|S], S).
adjetivo(femenino, singular,['facil'|S],['easy'|S], S).
adjetivo(femenino, singular,['dificil'|S],['hard'|S], S).
adjetivo(femenino, singular,['fuerte'|S],['strong'|S], S).
adjetivo(femenino, singular,['debil'|S],['weak'|S], S).

%Adjetivos femenino plural

adjetivo(femenino, plural,['altas'|S],['tall'|S], S).
adjetivo(femenino, plural,['bajas'|S],['short'|S], S).
adjetivo(femenino, plural,['blancas'|S],['white'|S], S).
adjetivo(femenino, plural,['rojas'|S],['red'|S], S).
adjetivo(femenino, plural,['negras'|S],['black'|S], S).
adjetivo(femenino, plural,['verdes'|S],['green'|S], S).
adjetivo(femenino, plural,['azules'|S],['blue'|S], S).
adjetivo(femenino, plural,['amarillas'|S],['yellow'|S], S).
adjetivo(femenino, plural,['bonitas'|S],['pretty'|S], S).
adjetivo(femenino, plural,['feas'|S],['ugly'|S], S).
adjetivo(femenino, plural,['faciles'|S],['easy'|S], S).
adjetivo(femenino, plural,['dificiles'|S],['hard'|S], S).
adjetivo(femenino, plural,['fuertes'|S],['strong'|S], S).
adjetivo(femenino, plural,['debiles'|S],['weak'|S], S).
/*
adjetivo(masculino, singular,['adj'|S],['adj'|S]).
adjetivo(masculino, plural,['adj'|S],['adj'|S])
adjetivo(femenino, singular,['adj'|S],['adj'|S]).
adjetivo(femenino, plural,['adj'|S],['adj'|S])*/

%sustantivos - masculino singular
sustantivo(masculino, singular, ['hombre'|S],['man'|S],S).
sustantivo(masculino, singular,['policia'|S],['police'|S],S).
sustantivo(masculino, singular,['presidente'|S],['president'|S],S).
sustantivo(masculino, singular,['bombero'|S],['fire fighter'|S],S).
sustantivo(masculino, singular,['profesor'|S],['teacher'|S],S).
sustantivo(masculino, singular,['abogado'|S],['lawyer'|S],S).
sustantivo(masculino, singular,['aire'|S],['air'|S],S).
sustantivo(masculino, singular,['amor'|S],['love'|S],S).
sustantivo(masculino, singular,['animal'|S],['animal'|S],S).
sustantivo(masculino, singular,['anho'|S],['year'|S],S).
sustantivo(masculino, singular,['arte'|S],['art'|S],S).
sustantivo(masculino, singular,['banco'|S],['bank'|S],S).
sustantivo(masculino, singular,['bebe'|S],['baby'|S],S).
sustantivo(masculino, singular,['caballo'|S],['horse'|S],S).
sustantivo(masculino, singular,['cuaderno'|S],['notebook'|S],S).
sustantivo(masculino, singular,['dia'|S],['day'|S],S).
sustantivo(masculino, singular,['dolar'|S],['dollar'|S],S).
sustantivo(masculino, singular,['estudiante'|S],['student'|S],S).
sustantivo(masculino, singular,['grupo'|S],['group'|S],S).
sustantivo(masculino, singular,['hijo'|S],['son'|S],S).
sustantivo(masculino, singular,['idioma'|S],['language'|S],S).
sustantivo(masculino, singular,['numero'|S],['number'|S],S).
sustantivo(masculino, singular,['periodico'|S],['newspaper'|S],S).
sustantivo(masculino, singular,['parque'|S],['park'|S],S).
sustantivo(masculino, singular,['telefono'|S],['phone'|S],S).
sustantivo(masculino, singular,['zapato'|S],['shoe'|S],S).
sustantivo(masculino, singular,['gato'|S],['cat'|S],S).
sustantivo(masculino, singular,['perro'|S],['dog'|S],S).
%sustantivos femenino singular
sustantivo(femenino, singular, ['mujer'|S],['woman'|S],S).
sustantivo(femenino, singular,['policia'|S],['police'|S],S).
sustantivo(femenino, singular,['presidente'|S],['president'|S],S).
sustantivo(femenino, singular,['bombero'|S],['fire fighter'|S],S).
sustantivo(femenino, singular,['profesora'|S],['teacher'|S],S).
sustantivo(femenino, singular,['abogada'|S],['lawyer'|S],S).
sustantivo(femenino, singular,['bebe'|S],['baby'|S],S).
sustantivo(femenino, singular,['bicicleta'|S],['bicycle'|S],S).
sustantivo(femenino, singular,['cabeza'|S],['head'|S],S).
sustantivo(femenino, singular,['caja'|S],['box'|S],S).
sustantivo(femenino, singular,['cama'|S],['bed'|S],S).
sustantivo(femenino, singular,['carne'|S],['meat'|S],S).
sustantivo(femenino, singular,['ciudad'|S],['city'|S],S).
sustantivo(femenino, singular,['comida'|S],['food'|S],S).
sustantivo(femenino, singular,['escuela'|S],['school'|S],S).
sustantivo(femenino, singular,['estrella'|S],['star'|S],S).
sustantivo(femenino, singular,['estudiante'|S],['student'|S],S).
sustantivo(femenino, singular,['fiesta'|S],['party'|S],S).
sustantivo(femenino, singular,['flor'|S],['flower'|S],S).
sustantivo(femenino, singular,['hija'|S],['daughter'|S],S).
sustantivo(femenino, singular,['iglesia'|S],['church'|S],S).
sustantivo(femenino, singular,['justicia'|S],['justice'|S],S).
sustantivo(femenino, singular,['mentira'|S],['lie'|S],S).
sustantivo(femenino, singular,['ropa'|S],['clothes'|S],S).
sustantivo(femenino, singular,['gata'|S],['cat'|S],S).

%sustantivos - femenino plurales

sustantivo(femenino, plural, ['mujeres'|S],['women'|S],S).
sustantivo(femenino, plural,['policias'|S],['policemen'|S],S).
sustantivo(femenino, plural,['presidentes'|S],['presidents'|S],S).
sustantivo(femenino, plural,['bomberos'|S],['fire fighters'|S],S).
sustantivo(femenino, plural,['profesoras'|S],['teachers'|S],S).
sustantivo(femenino, plural,['abogadas'|S],['lawyers'|S],S).
sustantivo(femenino, plural,['bebes'|S],['babies'|S],S).
sustantivo(femenino, plural,['bicicletas'|S],['bicycles'|S],S).
sustantivo(femenino, plural,['cabezas'|S],['heads'|S],S).
sustantivo(femenino, plural,['cajas'|S],['boxes'|S],S).
sustantivo(femenino, plural,['camas'|S],['beds'|S],S).
sustantivo(femenino, plural,['carnes'|S],['meats'|S],S).
sustantivo(femenino, plural,['ciudades'|S],['cities'|S],S).
sustantivo(femenino, plural,['comidas'|S],['foods'|S],S).
sustantivo(femenino, plural,['escuelas'|S],['schools'|S],S).
sustantivo(femenino, plural,['estrellas'|S],['stars'|S],S).
sustantivo(femenino, plural,['estudiantes'|S],['students'|S],S).
sustantivo(femenino, plural,['fiestas'|S],['parties'|S],S).
sustantivo(femenino, plural,['flores'|S],['flowers'|S],S).
sustantivo(femenino, plural,['hijas'|S],['daughters'|S],S).
sustantivo(femenino, plural,['iglesias'|S],['churches'|S],S).
sustantivo(femenino, plural,['mentiras'|S],['lies'|S],S).
sustantivo(femenino, plural,['gatas'|S],['cats'|S],S).

%sustantivos - masculino plurales
sustantivo(masculino, plural,['anteojos'|S],['glasses'|S],S). 
sustantivo(masculino, plural, ['hombres'|S],['men'|S],S).
sustantivo(masculino, plural,['policias'|S],['policemen'|S],S).
sustantivo(masculino, plural,['presidentes'|S],['presidents'|S],S).
sustantivo(masculino, plural,['bomberos'|S],['fire fighters'|S],S).
sustantivo(masculino, plural,['profesores'|S],['teachers'|S],S).
sustantivo(masculino, plural,['aires'|S],['airs'|S],S).
sustantivo(masculino, plural,['amores'|S],['loves'|S],S).
sustantivo(masculino, plural,['animales'|S],['animals'|S],S).
sustantivo(masculino, plural,['anhos'|S],['years'|S],S).
sustantivo(masculino, plural,['artes'|S],['arts'|S],S).
sustantivo(masculino, plural,['bancos'|S],['banks'|S],S).
sustantivo(masculino, plural,['bebes'|S],['babies'|S],S).
sustantivo(masculino, plural,['abogados'|S],['lawyers'|S],S).
sustantivo(masculino, plural,['caballos'|S],['horses'|S],S).
sustantivo(masculino, plural,['cuadernos'|S],['notebooks'|S],S).
sustantivo(masculino, plural,['dias'|S],['days'|S],S).
sustantivo(masculino, plural,['dolares'|S],['dollars'|S],S).
sustantivo(masculino, plural,['estudiantes'|S],['students'|S],S).
sustantivo(masculino, plural,['grupos'|S],['groups'|S],S).
sustantivo(masculino, plural,['hijos'|S],['sons'|S],S).
sustantivo(masculino, plural,['idiomas'|S],['languages'|S],S).
sustantivo(masculino, plural,['numeros'|S],['numbers'|S],S).
sustantivo(masculino, plural,['periodicos'|S],['newspapers'|S],S).
sustantivo(masculino, plural,['parques'|S],['parks'|S],S).
sustantivo(masculino, plural,['telefonos'|S],['phones'|S],S).
sustantivo(masculino, plural,['zapatos'|S],['shoes'|S],S).
sustantivo(masculino, plural,['gatos'|S],['cats'|S],S).
sustantivo(masculino, plural,['perros'|S],['dogs'|S],S).
%adverbio(espanol, ingles, resto)
adverbio(['ahora'|S], ['now'|S],S).
adverbio(['antes'|S], ['before'|S],S).
adverbio(['ayer'|S], ['yesterday'|S],S).
adverbio(['hoy'|S], ['today'|S],S).
adverbio(['manana'|S], ['tomorrow'|S],S).
adverbio(['mal'|S], ['badly'|S],S).
adverbio(['bien'|S], ['well'|S],S).
adverbio(['deprisa'|S], ['quickly'|S],S).
adverbio(['alla'|S], ['there'|S],S).
adverbio(['todavia'|S], ['yet'|S],S).
adverbio(['despacio'|S], ['slowly'|S],S).
adverbio(['lejos'|S], ['far'|S],S).
adverbio(['todo'|S], ['all'|S],S).
adverbio(['nada'|S], ['nothing'|S],S).
adverbio(['mas'|S], ['more'|S],S).
adverbio(['menos'|S], ['less'|S],S).
adverbio(['tampoco'|S], ['neither'|S],S).
adverbio(['dificilmente'|S], ['hardly'|S],S).
adverbio(['facilmente'|S], ['easily'|S],S).
adverbio(['fuertemente'|S], ['strongly'|S],S).
adverbio(['debilmente'|S], ['weakly'|S],S).















