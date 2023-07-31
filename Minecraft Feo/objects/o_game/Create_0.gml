globalvar cam_index, z_level, cam_angle;

#macro	VIEW_NUM	128
#macro	CEL_W		24

cam_index	= VIEW_NUM*3/4
cam_angle	= 0

z_level	= -64

alarm[0]	= 1
window_set_size(512*2,288*2)

angle_r	= (360/VIEW_NUM) * cam_index

vecx	= lengthdir_x(1,angle_r)
vecy	= lengthdir_y(1,angle_r)

cam_ang_change	= 90

alarm[1]	= 10

//128	0 32 64 96
//64	0 16 32	48