event_inherited()

var area = collision_zombi_on_line()

/*
if area && new_turn && !nutriente {
	image_index		=	0
	sprite_index	=	s_lzg
	num_s			=	1		//Cantidad de Guisantes
	speed_s			=	6		//Velocidad de Disparo
	repeat_			=	1		//Guisantes por Disparo
	randomize()
	image_speed		=	random_range(0.8,1.2)
	alarm[0]		=	36/image_speed
}

if nutriente {
	image_index		=	0
	sprite_index	=	s_lzg_x
	num_s			=	30		//Cantidad de Guisantes
	speed_s			=	6		//Velocidad de Disparo
	repeat_			=	2		//Guisantes por Disparo
	image_speed		=	1
	alarm[0]		=	1
	nutriente		=   false
}