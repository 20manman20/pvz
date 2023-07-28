x	=	mouse_x
y	=	mouse_y

if !p_ready {
	if keyboard_check_pressed(vk_down) && i_max_p <= 8 {
		i_max_p++
		carta_p[i_max_p]	=	noone
	}

	if keyboard_check_pressed(vk_up) && i_max_p >= 2 {
		var a = carta_p[i_max_p]
		if a != noone {
			planta[a]	= false
			i_length_p--
		}
		i_max_p--
	}
}

if !z_ready {
	if keyboard_check_pressed(vk_right) && i_max_z <= 8 {
		i_max_z++
		carta_z[i_max_z]	=	noone
	}

	if keyboard_check_pressed(vk_left) && i_max_z >= 2 {
		var a = carta_z[i_max_z]
		if a != noone {
			zombie[a]	= false
			i_length_z--
		}
		i_max_z--
	}
}

if p_ready && z_ready && !instance_exists(o_transition){
	instance_create_depth(-25,0,-1000000000,o_transition)
}

//Texto

if can_write[0] {
	if string_width(name[0]) < 70 or keyboard_check(vk_backspace) {
		name[0]	= keyboard_string
	} else {
		keyboard_string = name[0]
	}
}

if can_write[1] {
	if string_width(name[1]) < 70 or keyboard_check(vk_backspace) {
		name[1]	= keyboard_string
	} else {
		keyboard_string = name[1]
	}
}

if point_area(mouse_x,mouse_y,text_x[0],15,text_x[0]-44,22) {
	keyboard_string = name[0]
	can_write[0] = true
} else {
	can_write[0] = false
}

if point_area(mouse_x,mouse_y,text_x[1],15,text_x[1]+40,22) {
	keyboard_string = name[1]
	can_write[1] = true
} else {
	can_write[1] = false
}