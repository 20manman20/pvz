event_inherited()

var area = collision_zombi_on_line()

if !nutriente {
	if new_turn {
		if area {
			image_speed		=	1
			var det			=	instance_create_depth(x,y-3,depth-1,ctus_detected)
			det.id_			=	id
			num_s			=	1
			alarm[0]		=	8
		}
	}
}
if nutriente {
	sprite_index	=	s_ctus_x
	image_speed		=	1
	alarm[1]		=	16
	nutriente		=   false
}

if expulse {
	
	var proy		=	instance_create_depth(x,y-11.5,depth-1,cct_p)
	proy.cas_y		=	cas_y
	proy.floor_		=	proy.y + 12
	proy.id_		=	id
	if instance_exists(point) {
		
		if !ds_list_empty(bmr_list) {
			ds_list_copy(proy.damage_list,bmr_list)
		}
		
		proy.x_go		=	point.x + 12
	} else {
		proy.x_go		=	410
	}
	expulse			=	false
	
}

if sprite_index == s_ctus_x {
	if instance_exists(create_x) {
		if round(image_index) == 5 image_speed = 0
	} else {
		image_speed = 1
	}
}