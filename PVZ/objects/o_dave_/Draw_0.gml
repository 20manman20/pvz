draw_self()

if dialog[0,dialog_i] != "" {

	draw_sprite(s_dave_talk_glob,0,x+28,y-70)

	draw_set_font(P_Z_info)
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)

	draw_set_color(make_color_rgb(76,76,115))
	//draw_text_ext_transformed(x+78,y-77.5,string(dialog[0,dialog_i]),16,146,.5,.5,0)

	draw_set_color(make_color_rgb(76,76,115))
	//draw_text_ext_transformed(x+78,y-78,string(dialog[0,dialog_i]),16,146,.5,.5,0)
	
	draw_set_color(make_color_rgb(145.,145,168))
	draw_text_ext_transformed(x+78,y-78.5,string(dialog[0,dialog_i]),16,146,.5,.5,0)
	
}

draw_set_color(c_white)
draw_set_valign(fa_top)
draw_text(x,y-210,string(dialog_i))