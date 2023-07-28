event_inherited()
if new_turn && !nutriente {
	i_xscale	   *=	0.8
	image_index		=	0
	image_speed		=	1
	sprite_index	=	s_brs_s
	num_s			=	2		//Cantidad de Guisantes
	speed_s			=	6		//Velocidad de Disparo
	repeat_			=	2		//Guisantes por Disparo
	image_speed		=	1
	alarm[0]		=	1
}

if nutriente {
	image_index		=	0
	sprite_index	=	s_brs_x
	num_s			=	12		//Cantidad de Guisantes
	speed_s			=	12		//Velocidad de Disparo
	repeat_			=	2		//Guisantes por Disparo
	image_speed		=	1
	alarm[0]		=	20
	nutriente		=   false
}