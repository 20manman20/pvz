draw_self()

//draw_text(x,y,string(image_speed))

//Dibujar GUI de soles
draw_set_color(c_white)
draw_set_font(Aharoni)
draw_set_valign(fa_top)

	//Planta
	draw_sprite(s_soles_,0,75-70,4)
	draw_set_halign(fa_left)

	if s_p != global.soles s_p+=sign(global.soles-s_p)*5

	draw_text(106-70,9,string(s_p-frac(s_p)))

	//Zombi
	draw_sprite(s_solesz,0,room_width-60-15+70,4)
	draw_set_halign(fa_right)
	if s_zl != global.soles_z s_zl+=sign(global.soles_z-s_zl)*5

	draw_text(room_width-92-15+70,9,string(s_zl-frac(s_zl)))

//Dibujar Mouse
switch global.state {
	case "poner":
		window_set_cursor(cr_arrow)
		
	break
	case "pala":
		window_set_cursor(cr_none)
		draw_sprite(s_pala,0,mouse_x,mouse_y)
		
	break
	case "nutrientes":
		window_set_cursor(cr_none)
		draw_sprite(s_nutriente,0,mouse_x,mouse_y)
		
	break	
	case "mazo":
		window_set_cursor(cr_none)
		draw_sprite(s_mazo,0,mouse_x,mouse_y)
	break
}