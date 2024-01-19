globalvar	trans_val, trans, trans_room_to, trans_spd,
			game_state, lvl_actual,num_levels,
			window_scale;

game_state		= gm_st.menu
lvl_actual		= -1
num_levels		= 4

lvl_room		= [	 rm_00
					,rm_old_01
					,rm_old_02
					,rm_old_03]
					
#region Variables de transición entre salas
trans_spd		= 1.5
trans_val_an	= 0;
trans_val		= 0;
trans			= 0;
trans_room_to	= -4;

#endregion

#region Cámara y Ventana
window_scale	= 2

alarm[0]	= 1

surface_resize(application_surface,640,360)
window_set_size(640*window_scale,360*window_scale)

cam_x	= camera_get_view_x(view_camera[0])
cam_y	= camera_get_view_y(view_camera[0])
	
cam_w	= camera_get_view_width(view_camera[0])
cam_h	= camera_get_view_height(view_camera[0])

depth			= -10000

#endregion

#region Código del diálogo del tutorial provisional
function tut00() {
	if instance_number(o_par_plant) > 0 {
		for (var i = 0; i < instance_number(o_par_plant); ++i) {
		    with instance_find(o_par_plant,i) {
				if bol_ready {
					return 1
					break
				}
			}
		}
	}
}

function tut01() {
	return (cam_angle_r != 0)
}

function tut02() {
	for (var i = 0; i < instance_number(o_par_plant); ++i) {
	    with instance_find(o_par_plant,i) {
			if angle_z != 0 {
				return 1
				break
			}
		}
	}
}

function tut_pass() {
	return mouse_check_button_pressed(mb_any)
}

dialogue_i		=	0
dialogue_n		= [	5,
					3,
					0,
					0]

for (var i = 0; i < num_levels; ++i) {
	dialogue[i][0]	= ""
}

dialogue[0]		= [	["ya pepe lo de siempre, plantas con el mouse",tut00],
					["para girar la vista usa la ruedita del raton",tut01],
					["si quieres girar una planta haz clic en ella, ya sea que lo quieras girar para la izq o la der.",tut02],
					["y por último si quieres quitarlas usa el clic de la rueda",tut_pass],
					["ganas si destruyes todas las tumbas",tut_pass]]

dialogue[1]		= [	["ta divertido dime que ta divertido por favor",tut_pass],
					["hay varias animaciones sin acabar (como la del lanzaguisantes que aun ni dispara solo baila) pero espero te guste uwu",tut_pass],
					["pondria acá más texto de ayuda pero prefiero que el juego se explique solo, baicito",tut_pass]]

bol_dialogue	= true

#endregion
