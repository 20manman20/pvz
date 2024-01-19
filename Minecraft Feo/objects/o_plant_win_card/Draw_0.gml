if room == rm_win {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_win_card)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_text(room_width/2,176,card_vals[lvl_actual][3])
	draw_text(room_width/2,320,card_vals[lvl_actual][1])
	draw_set_color(c_black)
	draw_set_alpha(.35)
	draw_ellipse(480-36,290-10,480+36,290+10,false) 
	draw_text_transformed(room_width/2,334+8,card_vals[lvl_actual][2],.7,.7,0)
	
	for (var i = 0; i < button_n; ++i) {
		draw_set_color(c_black)
		draw_set_alpha(.2)
		draw_rectangle(button[i][1][XX],button[i][1][YY]-1,button[i][2][XX],button[i][2][YY]-1,false)
		draw_set_color(c_white)
		draw_set_alpha(button[i][0]*.4+.6)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text_transformed((button[i][1][XX]+button[i][2][XX])/2,(button[i][1][YY]+button[i][2][YY])/2,button[i][3],.7,.7,0)

	}
	
	draw_self()
}
	draw_self()

