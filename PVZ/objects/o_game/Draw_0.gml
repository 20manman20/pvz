var	x_	=	30
var	y_	=	bg_y

draw_set_font(Aharoni_l)

for (var a = 0; a <= i_max_p; a++) {
	//draw_text(35,y_+18*a,string(carta_p[a]))
	//draw_text(20,y_+18*a,string(planta[a]))
	if a == i_max_p	var index_	=	2
	else if a == 0		index_	=	0
	else				index_	=	1
	if p_ready		var	sprite_	=	s_semilla_mazo_p
	else				sprite_	=	s_semilla_put
	draw_sprite(sprite_,index_,x_+32*4+2,y_+19*a)
	if carta_p[a] != noone {
		draw_sprite(s_semilla_p,carta_p[a],x_+32*4+2,y_+19*a)
	}
}

if (i_length_p-1) == i_max_p var index_p = 1
else index_p = 0

draw_sprite(s_gui_choose,index_p,x_+23*2.5,y_-2+64)

draw_sprite(s_plant_cards_lit,i_p,x_+21.5,y_+33)

//Dibujar información
draw_set_font(P_Z_info)
draw_set_valign(fa_middle)

//Costo
draw_set_color(make_color_rgb(43,121,127))
draw_set_halign(fa_left)
draw_text_ext_transformed(x_+24.5+24+11,y_+64+1-18.5,p_info[1,i_p],13,120,0.5,0.5,0)

//Texto
draw_set_halign(fa_center)
draw_text_ext_transformed(x_+24.5+24+30,y_+64+1-45,p_info[0,i_p],13,120,0.5,0.5,0)

//Costo
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_text_ext_transformed(x_+24.5+24+11,y_+64+1-19.5,p_info[1,i_p],13,120,0.5,0.5,0)

//Texto
draw_set_halign(fa_center)
draw_text_ext_transformed(x_+24.5+24+30,y_+64-45,p_info[0,i_p],13,120,0.5,0.5,0)

switch p_info_i {
	
	case 1:
	
		draw_sprite(s_p_info_x,1,x_+24.5+24+58,y_+64+1-19)
		draw_set_halign(fa_right)
		draw_set_color(make_color_hsv(338,100,40))
		draw_text_ext_transformed(x_+24.5+72,y_+64+1-18.5,string(p_info[4,i_p])+" t.",13,120,0.5,0.5,0)
		draw_set_color(c_white)
		draw_text_ext_transformed(x_+24.5+72,y_+64+1-19.5,string(p_info[4,i_p])+" t.",13,120,0.5,0.5,0)
		
	break
	case 0:
	
		draw_sprite(s_p_info_x,0,x_+24.5+24+58,y_+64+1-19)
		draw_set_halign(fa_right)
		draw_set_color(make_color_hsv(338,100,40))
		draw_text_ext_transformed(x_+24.5+72,y_+64+1-18.5,p_info[5,i_p],13,120,0.5,0.5,0)
		draw_set_color(c_white)
		draw_text_ext_transformed(x_+24.5+72,y_+64+1-19.5,p_info[5,i_p],13,120,0.5,0.5,0)
		
	break
	case 2:
	
		draw_sprite(s_p_info_x,p_info[2,i_p]+2,x_+24.5+24+58,y_+64+1-19)
		draw_set_halign(fa_right)
		draw_set_color(make_color_hsv(256/12*(p_info[2,i_p]),205,205))
		draw_text_ext_transformed(x_+24.5+72,y_+64+1-18.5,p_info[3,i_p],13,120,0.5,0.5,0)
		draw_set_color(c_white)
		draw_text_ext_transformed(x_+24.5+72,y_+64+1-19.5,p_info[3,i_p],13,120,0.5,0.5,0)
		
	break
}

draw_set_valign(fa_top)

for (var a = 0; a <= 4; ++a) {
	
    draw_sprite_ext(s_semilla_p,a,			x_+23*a,	y_+64		,1,1,0,image_blend,1-(planta[a]*0.5))
	draw_sprite_ext(s_semilla_p,(a+5),		x_+23*a,	y_+18+64	,1,1,0,image_blend,1-(planta[a+5]*0.5))
	
}

var	x_	=	room_width - (30+23*5)

for (var a = 0; a <= i_max_z; a++) {
	//draw_text(room_width-35,y_+18*a,string(carta_z[a]))
	//draw_text(room_width-20,y_+18*a,string(zombie[a]))
	if a == i_max_z	var index_	=	2
	else if a == 0		index_	=	0
	else				index_	=	1
	if z_ready		var	sprite_	=	s_semilla_mazo_z
	else				sprite_	=	s_semilla_put
	draw_sprite(sprite_,index_,x_-15-22,y_+19*a)
	if carta_z[a] != noone {
		draw_sprite(s_semilla_z,carta_z[a],x_-15,y_+19*a)
	}
}

if (i_length_z-1) == i_max_z var index_z = 3
else index_z = 2
draw_sprite(s_gui_choose,index_z,x_+23*2.5,y_-2+64)

draw_sprite(s_zombie_cards_lit,i_z,x_+93.5,y_+44)

draw_set_font(P_Z_info)

//Información
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_color(make_color_rgb(76,61,67))
draw_text_ext_transformed(x_+37,y_+64+1-45,z_info[0,i_z],13,120,0.5,0.5,0)
draw_set_color(c_white)
draw_text_ext_transformed(x_+37,y_+64-45,z_info[0,i_z],13,120,0.5,0.5,0)

//Coste
draw_set_halign(fa_right)
draw_set_color(make_color_rgb(76,61,67))
draw_text_ext_transformed(x_+57,y_+64+1-18.5,z_info[1,i_z],13,120,0.5,0.5,0)
draw_set_color(c_white)
draw_text_ext_transformed(x_+57,y_+64+1-19.5,z_info[1,i_z],13,120,0.5,0.5,0)

switch z_info_i {
	case 0:
		//Vida
		draw_sprite(s_z_info_x,0,x_+7.5,y_+64+1-19)
		draw_set_halign(fa_left)
		draw_set_color(make_color_rgb(76,61,67))
		draw_text_ext_transformed(x_+18.5,y_+64+1-18.5,z_info[2,i_z],13,120,0.5,0.5,0)
		draw_set_color(c_white)
		draw_text_ext_transformed(x_+18.5,y_+64+1-19.5,z_info[2,i_z],13,120,0.5,0.5,0)
		draw_set_valign(fa_top)
		
	break
	case 1:
		//Tiempo
		draw_sprite(s_z_info_x,1,x_+7.5,y_+64+1-19)
		draw_set_halign(fa_left)
		draw_set_color(make_color_rgb(76,61,67))
		draw_text_ext_transformed(x_+18.5,y_+64+1-18.5,string(z_info[3,i_z]) + " t.",13,120,0.5,0.5,0)
		draw_set_color(c_white)
		draw_text_ext_transformed(x_+18.5,y_+64+1-19.5,string(z_info[3,i_z]) + " t.",13,120,0.5,0.5,0)
		draw_set_valign(fa_top)
		
	break
}
draw_set_valign(fa_top)

for (var e = 0; e <= 4; ++e) {
	
	draw_set_alpha(1-(zombie[e]*0.5))
    draw_sprite(s_semilla_z,e,			x_+23*e+22,		y_+64		)
	draw_set_alpha(1-(zombie[e+5]*0.5))
	draw_sprite(s_semilla_z,(e+5),		x_+23*e+22,		y_+18+64	)
	draw_set_alpha(1)
	
}

draw_set_font(P_Z_info)
draw_set_halign(fa_right)
draw_set_color(make_color_rgb(43,121,127))
draw_text_transformed(text_x[0]-3,15,name[0], 0.5, 0.5, 0)
draw_set_color(c_white)
draw_text_transformed(text_x[0]-3,14,name[0], 0.5, 0.5, 0)
draw_set_halign(fa_left)
draw_set_color(make_color_rgb(76,61,67))
draw_text_transformed(text_x[1]+3,15,name[1], 0.5, 0.5, 0)
draw_set_color(c_white)
draw_text_transformed(text_x[1]+3,14,name[1], 0.5, 0.5, 0)

