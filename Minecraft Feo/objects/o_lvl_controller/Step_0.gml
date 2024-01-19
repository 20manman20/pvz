spin_camera()

if spin_state {
	with o_par_block {
		//coorx	= drawx[| cam_index]
		//coory	= drawy[| cam_index]
		//coordd	= drawdd[| cam_index]
		//depth	= coordd
	}
}

layer_x(layer_get_id("Tiles_bg_00_2"),lengthdir_x(2,CAMERA_UP))
layer_y(layer_get_id("Tiles_bg_00_2"),lengthdir_y(2,CAMERA_UP))
layer_x(layer_get_id("Assets_1_1_1"),lengthdir_x(8,CAMERA_UP))
layer_y(layer_get_id("Assets_1_1_1"),lengthdir_y(8,CAMERA_UP))
/*
if instance_number(o_par_zombie) == 0 && game_state != gm_st.win {
	if !instance_exists(o_plant_win_card) instance_create_depth(room_width/2,room_height/2,-10,o_plant_win_card)
	game_state	= gm_st.win
	lvl_actual++
}
*/

camera_set_view_angle(view_camera[0],cam_angle*helpstate)
camera_set_view_pos(view_camera[0],cam_x+lengthdir_x(32,CAMERA_UP),cam_y+cam_h*(1-cam_angle_z)/2+lengthdir_y(32,CAMERA_UP))
camera_set_view_size(view_camera[0],cam_w,cam_h*cam_angle_z)

minus_cam_angle		=  -cam_angle
cam_angle_frame		= 0//floor(cam_angle/11.25+.5)

var _dis	= sqrt(320*320+360*360)
corner_x	= room_width/2 + lengthdir_x(_dis,-cam_angle+darctan2(360,-320))
corner_y	= room_height/2 + lengthdir_y(_dis,-cam_angle+darctan2(360,-320))
