event_inherited()

var area = collision_zombi_on_line()


if !nutriente {
	if new_turn {
		if area {
			image_speed		=	0
			var det			=	instance_create_depth(x,y-3,depth,bmr_detected)
			det.id_			=	id
			num_s			=	1
			alarm[0]		=	20
		}
	}
}
if nutriente {
	num_s			=	25		//Cantidad de Guisantes
	speed_s			=	6		//Velocidad de Disparo
	repeat_			=	1		//Guisantes por Disparo
	image_speed		=	1
	alarm[1]		=	20
	nutriente		=   false
}

if expulse {
	
	var proy		=	instance_create_depth(x,y-13,depth,bmr_bmrn)
	proy.cas_y		=	cas_y
	proy.floor_		=	proy.y + 12
	proy.id_		=	id
	if instance_exists(point) {
		
		if !ds_list_empty(bmr_list) {
			ds_list_copy(proy.damage_list,bmr_list)
		}
		
		proy.x_go		=	point.x + 12
		proy.hspeed		=	power(2*proy.gravity*abs(x-proy.x_go),1/2)
		proy.init_hsp_	=	proy.hspeed
	} else {
		proy.x_go		=	420
		proy.hspeed		=	power(2*proy.gravity*abs(x-proy.x_go),1/2)
		proy.init_hsp_	=	proy.hspeed
	}
	expulse			=	false
	
}
