bol_ready	= false

button_n	= 1
button_i	= -1


button[0]		= [	0,
				[384+32,384-24+16],
				[576-32,384+16],
				"siguiente nivel",
				siguiente]
				


depth	= -100

angle	= 0
yoff	= 0

spin_dir	= choose(1,-1)
hspeed		= spin_dir*.2

image_index	= lvl_actual+1

card_vals	= [	[Sprite88, "Girasol", "Genera solcitos uwu","¡Tienes una nueva planta!"],
				[s_wallnut_card, "Nuez", "Te protege owo","¡Tienes una nueva planta!"],
				[s_coltapulta_card, "Coltapulta", "Ataca cualquier zombi de una fila pero con menos daño >w<","¡Tienes una nueva planta!"],
				[s_NI_PINCHO_card, "NI PINCHO", "Ya no me dio tiempo jeje", "Ganaste p ganaste"]]

room_og		= room
