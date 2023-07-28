event_inherited()
if new_turn && !nutriente {
	i_xscale	   *=	0.8
	sprite_index	=	s_g_s
	image_index		=	0
	image_speed		=	1
	num_s			=	1		//Cantidad de Guisantes
	speed_s			=	6		//Velocidad de Disparo
	repeat_			=	1		//Guisantes por Disparo
	
	alarm[0]		=	1
}

if nutriente {
	image_index		=	0
	sprite_index	=	s_g_x
	num_s			=	6		//Cantidad de Guisantes
	speed_s			=	12		//Velocidad de Disparo
	repeat_			=	1		//Guisantes por Disparo
	alarm[0]		=	20
	nutriente		=   false
}