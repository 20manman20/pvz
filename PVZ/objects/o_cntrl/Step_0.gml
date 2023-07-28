switch (global.game_state) {
	
	case "gameplay": 
	
	#region Definir Turnos

	if global.turno != 0 {
	if frac(global.turno/2) = 0 {
		global.team_turn = "Zombi"
	} else {
		global.team_turn = "Planta"
	}
	} else {
		global.team_turn = "Planta"
	}

	#endregion

	#region Definir carga de cada planta y zombi

	for (var a = 0; a <= max_cartas[0]; ++a) {
		if planta[a,3] != planta[a,4] {
			if new_turn {
				planta[a,4]++
			}
		}
	}
		
	for (var a = 0; a <= max_cartas[1]; ++a) {
		if zombie[a,3] != zombie[a,4] {
			if new_turn {
				zombie[a,4]++
			}
		}
	}

	#endregion

	#region	Definir que existe una planta o un zombi

	switch (global.team_turn) {
		case "Planta":
			col_carta = instance_place(x,y,par_planta)
			if instance_place(x,y,par_zombi) {
				var plus	= instance_place(x,y,par_zombi)
				if plus.select_ {
					col_carta	= plus
				}
			}
		break
		case "Zombi":
			if global.state != "mazo" {
				col_carta = instance_place(x,y,par_zombi)
			} else {
				col_carta = instance_place(x,y,par_planta)
			}
		break
	}


	#endregion

	#region Incremento y decremento de i

	var up		=	keyboard_check(vk_up) or keyboard_check(vk_left)
				or keyboard_check(ord("W")) or keyboard_check(ord("A"))
			
	var down	=	keyboard_check(vk_down) or keyboard_check(vk_right)
				or keyboard_check(ord("S")) or keyboard_check(ord("D"))
			
	var index	= (global.team_turn == "Zombi")
	
	if global.team_turn == "Zombi" {
		var spc_index	= spc_z
	} else {
		var spc_index	= spc_p
	}

	if global.state == "poner" {

		if spc_index.circle_r_to == 0 {
			
			if up && can_imput {
				if i > 0 i-- 
				else i = max_cartas[index]
				can_imput	= false
				alarm[2]	= 10
			}

			if down && can_imput {
				if i < max_cartas[index] i++
				else i = 0
				can_imput	= false
				alarm[2]	= 10
			}
			
		}
	
	}
	
	#endregion

	#region carta tocada

	var index_			=	par_planta
	if global.team_turn	==	"Zombi" index_	=	par_zombi

	cas_detect		=	collision_circle(mouse_x,mouse_y,6,index_,false,true)

	#endregion

	#region	Definir posición en el patio

	switch global.state {
		case "poner":
			if global.team_turn	= "Planta" {
				pos_game	= "patio"
			} else {
				if zombie[i,0] == tmb {
					pos_game	= "patio"
				} else {
					pos_game	= "zona_z"
				}
			}
		break
		case "mazo":
			pos_game	= "patio"
		break
		case "pala":
			pos_game	= "patio"
		break
		case "nutrientes":
			pos_game	= "patio"
	}

	#endregion

	#region Definir la casilla con el mouse

	//if !instance_exists(cas_detect) {

	if pos_game	== "patio" {
	
		global.cas_x = clamp(((mouse_x-bg_x)/cas_l)-frac((mouse_x-bg_x)/cas_l),0,7)

	} else if pos_game == "zona_z" {
	
		global.cas_x = clamp(((mouse_x-bg_x)/cas_l)-frac((mouse_x-bg_x)/cas_l),0,9)//8
	
	}

	global.cas_y = clamp(((mouse_y-bg_y)/cas_l)-frac((mouse_y-bg_y)/cas_l),0,4)

	#endregion

	#region Posición del objeto control
	
	x = (bg_x + global.cas_x*cas_l)+10
	y = (bg_y + global.cas_y*cas_l)+17

	#endregion
	
	#region Definir algunos turnos especiales
	
	if keyboard_check_pressed(vk_escape) && global.state != "poner" {
		global.state = "poner"
	}

	if new_turn {
		global.pala = 3	
	}


	if global.team_turn == "Zombi" && zombie[i,0] == tmb {
		zombie[i,1] = (abs(global.cas_x-8)*100)
	}
	
	#endregion
	
	break
	
	case "win":
		
	
		
	break
}

if !instance_exists(cerca_power_z) {
	if transition {
		var trans_				= instance_create_depth(-25,0,-1000000000,o_transition)
		transition				= false
	}
	global.game_state	=	"win"
	winner_				=	"Planta"
	with par_zombi {
		instance_destroy()
	}
	
} else if !instance_exists(cerca_power) {
	if transition {
		var trans_				= instance_create_depth(-25,0,-1000000000,o_transition)
		transition				= false
	}
	global.game_state	=	"win"
	winner_				=	"Zombi"
	with par_planta {
		instance_destroy()
	}
}