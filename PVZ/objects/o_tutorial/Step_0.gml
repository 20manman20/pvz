switch o_dave_.dialog_i {
	case 6:
	
		if patio_intro {
		if !instance_exists(o_animated) {
			var fila_4	= instance_create_depth(o_cntrl.bg_x,o_cntrl.bg_y+80	,100000,o_animated)
			fila_4.sprite_index	= s_patio_intro1
			fila_4.persistent_	= true
			var fila_3	= instance_create_depth(o_cntrl.bg_x,o_cntrl.bg_y+60	,100001,o_animated)
			fila_3.sprite_index	= s_patio_intro
			fila_3.persistent_	= true
			var fila_2	= instance_create_depth(o_cntrl.bg_x,o_cntrl.bg_y+40	,100002,o_animated)
			fila_2.sprite_index	= s_patio_intro1
			fila_2.persistent_	= true
			var fila_1	= instance_create_depth(o_cntrl.bg_x,o_cntrl.bg_y+20	,100003,o_animated)
			fila_1.sprite_index	= s_patio_intro
			fila_1.persistent_	= true
			var fila_0	= instance_create_depth(o_cntrl.bg_x,o_cntrl.bg_y		,100004,o_animated)
			fila_0.sprite_index	= s_patio_intro1
			fila_0.persistent_	= true
		}
			patio_intro				= false
		}
	
	break
	case 12:
		o_cntrl.can_next_turn	=	false
		
		if instance_exists(gr) {
			o_dave_.bol_talk	= true
			global.game_state	=	"tutorial"
		} else {
			o_dave_.bol_talk	= false
			global.game_state	=	"gameplay"
		}
	
	break
	case 13:
	
		global.game_state	=	"tutorial"
	
	break
	case 19:
		
		o_dave_.bol_talk			= false
		
		if keyboard_check_pressed(vk_space) && alarm[0] == -1 {
		
			with o_cntrl {
				if o_carge_bar.can_change { 
					new_turn		= true
					global.turno++
					i				= 0
					new_turn_type	= global.team_turn
					alarm[0]		= 1
					global.state	= "poner"
				}
			}
			
			global.game_state	=	"tutorial"
			alarm[0]				= 180
		}
		
	
	break
	case 22:
		
		o_cntrl.i	=	1
	
		if instance_exists(lzg) {
			o_dave_.bol_talk		= true	
			global.game_state	=	"tutorial"
		} else {
			o_dave_.bol_talk	= false
			global.game_state	=	"gameplay"
		}
	
	break
	case 23:
	
		global.game_state	=	"tutorial"
		
	break
	case 26:
		if !instance_exists(z) {
			instance_create_depth(o_cntrl.bg_x+o_cntrl.cas_l*8+10,o_cntrl.bg_y+lzg.cas_y*o_cntrl.cas_l+16,depth,z)
		}
	break
	case 29:
		if instance_number(z) = 1 {
			randomize()
			instance_create_depth(o_cntrl.bg_x+o_cntrl.cas_l*9+10,o_cntrl.bg_y+choose(0,1,2,3,4)*o_cntrl.cas_l+16,depth,z)
		}
	break
	case 32:
		o_cntrl.can_next_turn	=	true
		global.game_state	=	"gameplay"
		if global.team_turn	=	"Planta" {	
			dado.mode_index		=	"Tutorial_0"
		} else {
			dado.mode_index		=	"Tutorial_1"
		}
		if instance_exists(z) {
			o_dave_.bol_talk	=	false
		} else {
			o_dave_.bol_talk	=	true
		}
	break
	
}