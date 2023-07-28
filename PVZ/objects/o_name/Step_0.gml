if can_write[0] {
	if string_width(name[0]) < 90 or keyboard_check(vk_backspace) {
		name[0]	= keyboard_string
	} else {
		keyboard_string = name[0]
	}
}

if can_write[1] {
	if string_width(name[1]) < 90 or keyboard_check(vk_backspace) {
		name[1]	= keyboard_string
	} else {
		keyboard_string = name[1]
	}
}

if point_area(mouse_x,mouse_y,text_x[0]-10,35,text_x[0]+120,65) {
	keyboard_string = name[0]
	can_write[0] = true
} else {
	can_write[0] = false
}

if point_area(mouse_x,mouse_y,text_x[1]-10,35,text_x[1]+120,65) {
	keyboard_string = name[1]
	can_write[1] = true
} else {
	can_write[1] = false
}