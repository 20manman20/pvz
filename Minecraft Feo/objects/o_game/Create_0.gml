globalvar cam_index, z_level, cam_angle, cam_angle_r;

cam_angle		= 0
cam_index		= round(round(cam_angle)/(360/VIEW_NUM) % VIEW_NUM)

depth		= -1000

z_level			=	 -64

alarm[0]		= 1


cam_angle_r		= (360/VIEW_NUM) * cam_index
angle_spd		= .2

vecx			= lengthdir_x(1,cam_angle_r)
vecy			= lengthdir_y(1,cam_angle_r)

cam_ang_change	= 90

alarm[1]		= 1

//128	0 32 64 96
//64	0 16 32	48

seeds_i			= 0
seeds_max		= 5

cam_x			= 224
cam_y			= 144
cam_w			= 512
cam_h			= 288

window_set_size(512*3,288*3)

/*
plant[value,0]	= Objeto
plant[value,1]	= Costo
plant[value,2]	= Carga
plant[value,3]	= Carga necesaria
plant[value,4]	= Y offset
plant[value,5]	= Ang offset
*/

enum pl {
	obj,
	cost,
	loadf,
	load,
	y_,
	ang
	
}

for (var i = 0; i < seeds_max; ++i) {
    plant[i,0]	= noone
	plant[i,1]	= 100
	plant[i,2]	= 4
	plant[i,3]	= plant[i,2]
	plant[i,4]	= 0
	plant[i,5]	= 0
}

mx	= 0
my	= 0
mz	= 0
