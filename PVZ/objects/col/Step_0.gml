event_inherited()

var x_			= (o_cntrl.bg_x+(cas_x*o_cntrl.cas_l))
var y_			= (o_cntrl.bg_y+(cas_y*o_cntrl.cas_l))

var area = collision_zombi_on_line()

if !nutriente {
	if new_turn {
		if area {
			sprite_index	=   s_col
			image_index		=	0
			var det			=	instance_create_depth(x,y-5,depth,canon_detected)
			det.id_			=	id
			image_speed		=	1
			num_s			=	2
			alarm[0]		=	20
		}
	}
} 

if expulse {
	
	if sprite_index == s_col_x or (sprite_index == s_col && image_index < 6 && image_index > 2) {
		i_xscale		=	1.25
		i_yscale		=	0.8
	}
	
	#region Disparar Coles
		
	if sprite_index	= s_col_x {
		switch num_s {
			case 5: //Arriba
				var	x_					=	o_cntrl.bg_x + 4*20 + 10
				var y_					=	o_cntrl.bg_y + 0*20 + 10
				var proy				=	scr_proyectil(x-4,y-10,x_,y_,300,450,col_col_x)
				proy.floor_x			=	x_
				proy.floor_y			=	y_
				proy.id_				=	id
				proy.image_index	=	1
			break
			case 4: //Abajo
				var	x_					=	o_cntrl.bg_x + 4*20 + 10
				var y_					=	o_cntrl.bg_y + 4*20 + 10
				var proy				=	scr_proyectil(x-4,y-10,x_,y_,300,450,col_col_x)
				proy.floor_x			=	x_
				proy.floor_y			=	y_
				proy.id_				=	id
				proy.image_index	=	1
			break
			case 3: //Atrás arriba
				var	x_					=	o_cntrl.bg_x + 1*20 + 10
				var y_					=	o_cntrl.bg_y + 1*20 + 10
				var proy				=	scr_proyectil(x-4,y-10,x_,y_,300,450,col_col_x)
				proy.floor_x			=	x_
				proy.floor_y			=	y_
				proy.id_				=	id
				proy.image_index	=	1
			break
			
			case 2: //Atrás abajo
				var	x_					=	o_cntrl.bg_x + 1*20 + 10
				var y_					=	o_cntrl.bg_y + 3*20 + 10
				var proy				=	scr_proyectil(x-4,y-10,x_,y_,300,450,col_col_x)
				proy.floor_x			=	x_
				proy.floor_y			=	y_
				proy.id_				=	id
				proy.image_index	=	1
			break
			case 1: //Adelante arriba
				var	x_					=	o_cntrl.bg_x + 7*20 + 10
				var y_					=	o_cntrl.bg_y + 1*20 + 10
				var proy				=	scr_proyectil(x-4,y-10,x_,y_,300,450,col_col_x)
				proy.floor_x			=	x_
				proy.floor_y			=	y_
				proy.id_				=	id
				proy.image_index	=	1
			break
			case 0: //Adelante abajo
				var	x_					=	o_cntrl.bg_x + 7*20 + 10
				var y_					=	o_cntrl.bg_y + 3*20 + 10
				var proy				=	scr_proyectil(x-4,y-10,x_,y_,300,450,col_col_x)
				proy.floor_x			=	x_
				proy.floor_y			=	y_
				proy.id_				=	id
				proy.image_index	=	1
			break
		}
		
		#endregion Disparar Coles
	
	} else {
		if instance_exists(point) {
			var proy	=	scr_proyectil(x-4,y-18,point.x,point.y,200,350,col_col)
			if instance_exists(point) {
				proy.floor_	=	proy.y + 16
				proy.id_	=	id
				point		=	noone
			}
		}
	}
	expulse					=	false
}

if nutriente {
	image_speed		=	1
	sprite_index	=	s_col_x
	num_s			=	6
	alarm[0]		=	55
	nutriente		=	false
}
