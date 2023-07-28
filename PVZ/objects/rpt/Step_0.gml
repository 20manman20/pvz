event_inherited()

var area = collision_zombi_on_line()
	

if area && new_turn && !nutriente {
	sprite_index	=	s_rpt
	image_index		=	0
	num_s			=	2		//Cantidad de Guisantes
	speed_s			=	6		//Velocidad de Disparo
	repeat_			=	1		//Guisantes por Disparo
	image_speed		=	random_range(0.8,1.2)
	alarm[0]		=	42/image_speed
}

if nutriente {
	sprite_index	=	s_rpt_x
	image_index		=	0
	num_s			=	30		//Cantidad de Guisantes
	speed_s			=	6		//Velocidad de Disparo
	repeat_			=	2		//Guisantes por Disparo
	image_speed		=	1
	alarm[0]		=	1
	nutriente		=   false
}