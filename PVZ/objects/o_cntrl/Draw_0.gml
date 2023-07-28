//Definir variables
var i_p	= 0
var i_z	= 0

switch global.game_state {

	case "gameplay":
	
		#region Dibujar Marco

		//Punto de origen respecto al patio
		var origin_x = bg_x + (cas_l * global.cas_x)
		var origin_y = bg_y + (cas_l * global.cas_y)

		//Dibujar el Marco
		if global.state	==	"lnz_pltn" {
			draw_sprite(s_diana,0,x,y-8)
		} else {
			draw_sprite(s_marco,0,origin_x+cas_l/2,origin_y+cas_l/2,)
		}

		#endregion

		#region Dibujar planta o zombi a crear
		
		//Variable que diferencia cartas
		if global.team_turn == "Planta" i_p = planta[i,5]
		else i_z = zombie[i,5]


		if global.mode_game == "planta" or global.mode_game == "duelo" {
			if global.state	== "poner" {
				if global.team_turn == "Planta" && !instance_exists(col_carta) {
					draw_sprite(s_plant_cards_lit,planta[i,5],x,y-1)
				}
			}	
		} else if global.mode_game == "zombi" or global.mode_game == "duelo" {
			if global.state	== "poner" {
				if global.team_turn == "Zombi" {
					draw_sprite(s_zombie_cards_lit,zombie[i,5],x,y-1)
				}
			}	
		}
		
		#endregion

	break

}

/*
	#region Dibujar GUI´s básicas

//Nutrientes
//draw_sprite(s_nutrientes,global.ntrientes,40,room_height-40)

//Hordas
draw_sprite(s_hordas,global.horda,room_width-40,room_height-40)

//Dibujar pala 
//draw_sprite(s_pala_GUI,global.pala,40,0)

//Dibujar mazo
//draw_sprite(s_mazo_GUI,global.mazo,room_width-40,0)

//Definir alineado horizontal
draw_set_halign(fa_center)

#endregion
	
*/
	
	#region Dibujar listado de plantas y zombis

draw_set_font(Aharoni_l)

#region	Planta

draw_set_halign(fa_left)

	#region	Fondo de la carta y la carta

	if instance_exists(spc_p) var plus_s	= spc_p.circle_r/10
	else var plus_s	= 0
	
for (var a = 0; a <= max_cartas[0]; ++a) {
	
	var center_	= 8+abs(((max_cartas[0]+1)-10))*8.5
	
	if a == max_cartas[0]	var index_	=	2
	else if a == 0			index_		=	0
	else					index_		=	1
	draw_sprite(s_semilla_bg,index_,8-plus_s,40+17*a+center_)
	
    draw_sprite_ext(s_semilla_p,planta[a,5],8-plus_s+5*(i==a)*(global.team_turn=="Planta")*(global.game_state == "gameplay"),40+17*a+center_,1,1,0,image_blend,image_alpha)
	
}

#endregion

	#region Carga y coste

for (var a = 0; a <= max_cartas[0]; ++a) {
	
	var center_	= 8+abs(((max_cartas[0]+1)-10))*8.5
	
	var plus_ = 5*(i==a)*(global.team_turn=="Planta")*(global.game_state == "gameplay")
	
	//Carga

	var carga
	carga = planta[a,4]/planta[a,3]
	
	draw_set_alpha(0.25)
	draw_set_color(c_black)
	draw_set_circle_precision(0)
	if carga != 1 draw_roundrect_ext(2, 21+18*a, 22, 21+17*a-(14*(1-carga)), 4, 4, 0); 	
	draw_set_alpha(1)
	
	//Costo
	
	var color = make_color_rgb(89,106,127)
	
	draw_set_color(color) 
	
	draw_text(25+plus_-plus_s*2,48+17*a+center_, planta[a,1])
	draw_text(27+plus_-plus_s*2,48+17*a+center_, planta[a,1])
	draw_text(26+plus_-plus_s*2,49+17*a+center_, planta[a,1])
	draw_text(26+plus_-plus_s*2,47+17*a+center_, planta[a,1])
	
	draw_set_color(c_white)
	draw_text(26+plus_-plus_s*2,48+17*a+center_, planta[a,1])
	
}

#endregion

#endregion

#region	Zombi

	#region Fondo de la carta y la carta
	
	if instance_exists(spc_p) var plus_s	= spc_z.circle_r/10
	else var plus_s	= 0
	
for (var a = 0; a <= max_cartas[1]; ++a) {
	
	var center_	= 8+abs(((max_cartas[1]+1)-10))*8.5
	
	if a == max_cartas[1]	var index_	=	2
	else if a == 0			index_		=	0
	else					index_		=	1
	draw_sprite(s_semilla_bg,index_,room_width-8+plus_s-22,40+17*a+center_)

	draw_sprite_ext(s_semilla_z,zombie[a,5],room_width+plus_s-8-(i==a)*5*(global.team_turn=="Zombi")*(global.game_state == "gameplay"),40+17*a+center_,1,1,0,image_blend,image_alpha)
	 
}

#endregion

	#region Carga y Coste

for (var a = 0; a <= max_cartas[1]; ++a) {
	
	var	plus_ = -5*(i==a)*(global.team_turn=="Zombi")*(global.game_state == "gameplay")
	
	draw_set_halign(fa_right)
	
	//Carga
	 
	var carga
	carga = zombie[a,4]/zombie[a,3]
	
	draw_set_alpha(0.25)
	draw_set_color(c_black)
	if carga != 1 draw_roundrect_ext(room_width-4+plus_s, 21+17*a, room_width-24, 21+18*a-(14*(1-carga)), 4, 4, 0); 	 	
	draw_set_alpha(1)
		
	draw_set_halign(fa_right)
	
	var color = make_color_rgb(89,106,127)
		
	draw_set_color(color) 
	
	draw_text(room_width+plus_s*2-27+plus_,48+17*a+center_, zombie[a,1])
	draw_text(room_width+plus_s*2-25+plus_,48+17*a+center_, zombie[a,1])
	draw_text(room_width+plus_s*2-26+plus_,47+17*a+center_, zombie[a,1])
	draw_text(room_width+plus_s*2-26+plus_,49+17*a+center_, zombie[a,1])

	draw_set_color(c_white)
	
	draw_text(room_width+plus_s*2-26+plus_,48+17*a+center_, string(zombie[a,1]))
	
	draw_set_color(c_white)
	
}
	
#endregion

#endregion

#endregion

//draw_sprite_ext(s_patio12,0,bg_x+cas_l*5,bg_y+cas_l*2.5,1,1,0,image_blend,.5)

//draw_self()

draw_text(mouse_x,mouse_y-10,string(fps_real))
draw_text(mouse_x,mouse_y-40,string(fps))