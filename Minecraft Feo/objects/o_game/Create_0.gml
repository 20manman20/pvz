globalvar cam_index, z_level, cam_angle, cam_angle_r;

backyard_00	= [14,9]
backyard_11	= [25,14]

for (var i = 0; i < (backyard_11[0]-backyard_00[0]+1); ++i) {
	bol_zombie_x[i]	= false
}

for (var i = 0; i < (backyard_11[1]-backyard_00[1]+1); ++i) {
	bol_zombie_y[i]	= false
}

for (var i = 0; i < 12; ++i) {
	
}

sun_amount		= 0

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

seed_i			= 0
seeds_max		= 5

cam_x			= 224
cam_y			= 144
cam_w			= 512
cam_h			= 288

window_set_size(512*3,288*3)

/*
seed {
	Index
	Costo
	Carga
	Y offset
	Ang offset
}

plant {
	Objeto
	Costo
	Carga necesaria
	Carga inicial
}
*/

enum pl_sd {
	ind,
	cost,
	load,
	y_,
	ang
}

enum pl {
	obj,
	cost,
	load,
	loadi
}

 plant	= [	[o_sunflower,50,5,5],
			[o_peashooter,100,5,5],
			[o_wallnut,50,20,15],
			[o_potato_mine,25,20,10]]
 
for (var i = 0; i < seeds_max; ++i) {
	var _ind	= irandom_range(0,3)
	seed[i,pl_sd.ind]	= _ind
	seed[i,pl_sd.cost]	= plant[_ind,pl.cost]
	seed[i,pl_sd.load]	= plant[_ind,pl.loadi]
	seed[i,pl_sd.y_]	= 0
	seed[i,pl_sd.ang]	= 0
}

mx	= 5
my	= 5
mz	= 0

enum lvl_st {
	none,
	put
}

level_state		= lvl_st.none
plant_to_put	= noone

spin_state	= 0