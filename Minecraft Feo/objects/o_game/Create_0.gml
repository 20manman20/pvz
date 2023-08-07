globalvar cam_index, z_level, cam_angle;

cam_angle		= 180
cam_index		= round(round(cam_angle)/(360/VIEW_NUM) % VIEW_NUM)


z_level			=	 -64

alarm[0]		= 1


angle_r			= (360/VIEW_NUM) * cam_index
angle_spd		= .2

vecx			= lengthdir_x(1,angle_r)
vecy			= lengthdir_y(1,angle_r)

cam_ang_change	= 90

alarm[1]		= 1

window_set_size(512*3,288*3)

//128	0 32 64 96
//64	0 16 32	48