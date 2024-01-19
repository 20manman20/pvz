button_i	= -1
for (var i = 0; i < button_n; ++i) {
	button[i][0]	= in_range(mouse_x,button[i][1][XX],button[i][2][XX]) && in_range(mouse_y,button[i][1][YY],button[i][2][YY]) 
	if button[i][0] {
		button_i	= i
	}
}

xoff	-= keyboard_check(vk_left)-keyboard_check(vk_right)
yoff	+= keyboard_check(vk_up)-keyboard_check(vk_down)