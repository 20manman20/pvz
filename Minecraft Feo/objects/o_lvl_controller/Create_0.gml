globalvar	cam_index, cam_angle, cam_angle_r, cam_x, cam_y, cam_w, cam_h,
			minus_cam_angle, cam_angle_z,
			plant,	sun_amount, first_sun_time, sun_fall_cad,
			zombie,	brain_amount, first_brain_time, brain_fall_cad,
			zombies_health_max,
			zombies_health,
			level_type,
			game_side,
			backyard_00, backyard_11, lvl_room,
			max_z_layer,
			brain_cadence_acc,
			corner_x, corner_y,
			mapw, maph,
			cam_angle_frame;
			
enum lvl_tp {
	normal,
	spc
}

max_z_layer		= 0

init_plants()
init_zombies()

mapw			= ((room_width div CEL_W) -1)
maph			= ((room_height div CEL_W) -1)

game_side		= 0
game_state		= gm_st.play

angle_z		= 30
cam_angle_z	= 1/dsin(angle_z)

cam_angle		= 135+180
cam_index		= round(round(cam_angle)/(360/VIEW_NUM) % VIEW_NUM)

zombies_health_max	= 0
zombies_health		= 0


alarm[0]		= 1

cam_angle_r		= (360/VIEW_NUM) * cam_index
angle_spd		= .3

vecx			= lengthdir_x(1,cam_angle_r)
vecy			= lengthdir_y(1,cam_angle_r)

cam_ang_change	= 90
spin_state		= 0
spin_dir		= 0

//128	0 32 64 96
//64	0 16 32	48

helpstate		= 1

corner_x		= 160
corner_y		= -72

depth			= 900

spin_to			= cam_angle
spin_from		= spin_to

