dialog_i		=	0

bol_talk		=	true

dave_talking	=	true

dialog_i_max	=	32

dialog[0,0]		=	"¡Hola, vecino!"	
dialog[1,0]		=	s_dave_play_talk
dialog[0,1]		=	"Mi nombre es Crazy Dave"
dialog[1,1]		=	s_dave_play_talk
dialog[0,2]		=	"Pero tú puedes llamarme Crazy Dave"
dialog[1,2]		=	s_dave_play_talk
dialog[0,3]		=	"¿Quieres que te enseñe a enfrentar a esos zombis cierto?"
dialog[1,3]		=	s_dave_play_talk
dialog[0,4]		=	"Pues bien, comencemos con tu patio"
dialog[1,4]		=	s_dave_play_talk
dialog[0,5]		=	"Luce como un desierto (sin ofender)"
dialog[1,5]		=	s_dave_play_talk
dialog[0,6]		=	""
dialog[1,6]		=	s_dave_play_talk
dialog[0,7]		=	"¡Mucho mejor!"
dialog[1,7]		=	s_dave_play_talk
dialog[0,8]		=	"¿Ves eso al frente del patio? Son tumbas, tumbas malas"
dialog[1,8]		=	s_dave_play_talk
dialog[0,9]		=	"¿Ves esto? Es un girasol, con esto obtienes soles cada turno"
dialog[1,9]		=	s_dave_grs
dialog[0,10]	=	"¿Y ves esto? Es un lanzaguisante, con esto atacas tumbas"
dialog[1,10]	=	s_dave_lzg
dialog[0,11]	=	"Comencemos plantando un girasol"
dialog[1,11]	=	s_dave_grs
dialog[0,12]	=	""
dialog[1,12]	=	s_dave_play_talk
dialog[0,13]	=	"¡Vaya, inesperadamente eres muy bueno en esto!"
dialog[1,13]	=	s_dave_play_talk
dialog[0,14]	=	"¿Ves ese número de arriba? Indica que turno es"
dialog[1,14]	=	s_dave_play_talk
dialog[0,15]	=	"Las bolitas de los costados indican si es nuestro turno o el de los zombis"
dialog[1,15]	=	s_dave_play_talk
dialog[0,16]	=	"Si la bolita más grande es verde es porque es nuestro turno"
dialog[1,16]	=	s_dave_play_talk
dialog[0,17]	=	"Cada turno ese dado gigante soltará soles o cosas especiales"
dialog[1,17]	=	s_dave_play_talk
dialog[0,18]	=	"Ahora dale a espacio para pasar de turno"
dialog[1,18]	=	s_dave_play_talk
dialog[0,19]	=	""
dialog[1,19]	=	s_dave_play_talk
dialog[0,20]	=	"Estás de suerte, el dado te tiró 75 soles"
dialog[1,20]	=	s_dave_play_talk
dialog[0,21]	=	"Probemos con un lanzaguisantes, ¡Planta uno y destruye esas tumbas!"
dialog[1,21]	=	s_dave_lzg
dialog[0,22]	=	""
dialog[1,22]	=	s_dave_play_talk
dialog[0,23]	=	"¡Bien hecho! ¡Debes tener un doctorado en botánica!"
dialog[1,23]	=	s_dave_play_talk
dialog[0,24]	=	"Si destruyes todas las tumbas de los zombis ganas"
dialog[1,24]	=	s_dave_play_talk
dialog[0,25]	=	"Pero si ellos destruyen tu cerca, pierdes tu cerebro y pierdes tú"
dialog[1,25]	=	s_dave_play_talk
dialog[0,26]	=	""
dialog[1,26]	=	s_dave_play_talk
dialog[0,27]	=	"Demonios, la suerte te ha abandonado"
dialog[1,27]	=	s_dave_play_talk
dialog[0,28]	=	"Pero sereno, tu lanzaguisantes lo destruirá antes de que puedas decir zombi"
dialog[1,28]	=	s_dave_play_talk
dialog[0,29]	=	""
dialog[1,29]	=	s_dave_play_talk
dialog[0,30]	=	"Ok, ahora la suerte te ha abandonado y escupido"
dialog[1,30]	=	s_dave_play_talk
dialog[0,31]	=	"Que el dado se apiade de tu alma"
dialog[1,31]	=	s_dave_play_talk
dialog[0,32]	=	""
dialog[1,32]	=	s_dave_play_talk

sprite_index	=	dialog[1,dialog_i]
alarm[0]		=	string_length(dialog[0,dialog_i])*1.5