event_inherited()

/*

*/
#region Control de animaciones
_angle	= (floor(cam_angle/45+.5)*45 + angle_z + 720) % 360

if sprite_i[_angle div 45][1] != -1 {
	image_index		= sprite_i[_angle div 45][1]
}

if height_ > 24 { 
	sprite_index	= sprite_i[_angle div 45][0][0]
} else {
	sprite_index	= sprite_i[_angle div 45][0]
}

image_xscale	= sprite_i[_angle div 45][2]

#endregion

if hp_ <= 0 && state != z_st.death {
	if death_anim {
		image_index		= 0
		sprite_i		= sprite_ar[z_st.death]
	}
	state			= z_st.death
	event_death()
	if instance_number(o_par_zombie) == (instance_number(o_tombstone_par)+1) {
		o_zombies_controller.bol_zombie_left	= false
	}
}

damage_fx	= lerp(damage_fx,	0, .1)

damage_up	= lerp(damage_up,	0, .1)
damage_down	= lerp(damage_down,	0, .1)

/*
if !(in_range(x,backyard_00[XX]*CEL_W-32,backyard_11[XX]*CEL_W+32) && in_range(y,backyard_00[YY]*CEL_W-32,backyard_11[YY]*CEL_W+64)) {
	game_state	= gm_st.lose
	room_trans(rm_lose)
}
*/


c_hue		= lerp(c_hue,0,.3)
c_sat		= lerp(c_sat,0,.3)
c_val		= lerp(c_val,0,.3)

image_blend	= make_color_hsv(0+c_hue,24+c_sat,255+c_val)


if instance_exists(o_plants_controller) {
	with (o_plants_controller) {
		var _bol0	= mouse_in_backyard && in_range(my,backyard_00[YY],backyard_11[YY])
		var _bol1	= other.y div CEL_W == my
		
		if _bol0 && _bol1 {
			other.c_val	= -100
		}
	}
}