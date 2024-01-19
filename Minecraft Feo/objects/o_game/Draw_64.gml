
/*
if bol_dialogue {
	var _x	= 24,
		_y	= 100,
		_w	= 100,
		_h	= 100;
		
	draw_set_alpha(.7)
	draw_set_color(c_black)
	draw_rectangle(_x,_y,_x+_w,_y+_h,false)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(Font4)
	draw_text_ext_transformed(_x+_w/2,_y+_h/2,dialogue[clamp(lvl_actual+1,0,3)][dialogue_i][0],-1,_w-8,.7,.7,0)
}
*/

display_set_gui_size(cam_w,cam_h)

draw_set_alpha(trans_val)
draw_set_color(c_white)
draw_rectangle(0,0,cam_w,cam_h,false)

draw_set_alpha(1)

