event_inherited()

if new_turn {
	if charge < 8 {
		if charge == 7 {
			charge++
			image_index		=	0
			image_speed		=	1
			sprite_index	=	s_lnz_pltn_r
		} else {
			charge++
		}
	}
}

if !nutriente {
	if mouse_check_button_pressed(mb_left) {
	
		var me_col		=	bbox_left-2 <= mouse_x && bbox_right+2 >= mouse_x && bbox_bottom+2 >= mouse_y && bbox_top-2 <= mouse_y
	
		if global.state	!= "lnz_pltn" {
			if me_col && charge	== 8	{
				global.state	=	"lnz_pltn"
				shoot_			=	true
			}	
		} else {
			if shoot_ {
				charge			=	0
				image_index		=	0
				image_speed		=	1
				sprite_index	=	s_lnz_pltn
			
				num_s			=	1		//Cantidad de Plátanos
				speed_s			=	6		//Velocidad de Disparo
				repeat_s		=	1		//Cantidad de disparos
			
				image_speed		=	1
				alarm[0]		=	1
			
				global.state	=	"poner"
				shoot_			=	false
			
			}
		}
	}
} else {
	shoot_	= true
	if shoot_ {
		image_index		=	0
		image_speed		=	1
		sprite_index	=	s_lnz_pltn_x
	
		charge			=	0
	
		num_s			=	8		//Cantidad de Plátanos
		speed_s			=	24		//Velocidad de Disparo
		repeat_s		=	4		//Cantidad de disparos
			
		image_speed		=	1
		alarm[0]		=	1
		
		shoot_			=	false
	}
	nutriente			=	false
}