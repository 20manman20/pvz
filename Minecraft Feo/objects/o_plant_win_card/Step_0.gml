

if room	== rm_win {
	button_i	= -1
	for (var i = 0; i < button_n; ++i) {
		button[i][0]	= in_range(mouse_x,button[i][1][XX],button[i][2][XX]) && in_range(mouse_y,button[i][1][YY],button[i][2][YY]) 
		if button[i][0] {
			button_i	= i
		}
	}
} else {
	if bol_ready {
		image_xscale	+= .005
		image_yscale	= image_xscale
	} else {

		if angle < 180 {
			hspeed		= spin_dir*.2
			angle+=4
		} else {
			angle	= 180
			hspeed	= 0
		}
		yoff	-= lengthdir_x(2,angle)

		y	= ystart+clamp(yoff,-48,8)
	}
}

if !(room == room_og || room == rm_win) {
	instance_destroy()
} else if room == rm_win {
	sprite_index	= card_vals[lvl_actual][0]
	image_speed		= 1
	image_xscale	= 1
	image_yscale	= 1
	hspeed			= 0
	vspeed			= 0
	x				= 480
	y				= 256
}