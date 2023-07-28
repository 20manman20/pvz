if index == "Planta" {
	
	if mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x,mouse_y,55,123,55+22,123+19) && circle_r_to != 0 {
		if spc_cart[spc_cart_i] > 0 {
			var spc_cart_o = instance_create_depth(81-40,114,depth+2,o_cart_special)
			spc_cart_o.spc_cart_i	= spc_cart_i
			spc_cart_o.x_to	= 89
			spc_cart[spc_cart_i]--
		}
	}
	
	if global.team_turn != "Planta"{
		circle_r_to	= 0
	}
	
} else {
	
	
	
	if global.team_turn != "Zombi"{
		circle_r_to	= 0
	}
	
}