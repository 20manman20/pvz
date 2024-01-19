for (var i = 0; i < button_n; ++i) {
	draw_set_color(c_black)
	draw_set_alpha(.2)
	draw_rectangle(button[i][1][XX],button[i][1][YY]-1,button[i][2][XX],button[i][2][YY]-1,false)
	draw_set_color(c_white)
	draw_set_alpha(button[i][0]*.4+.6)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text((button[i][1][XX]+button[i][2][XX])/2,(button[i][1][YY]+button[i][2][YY])/2,button[i][3])

}