#macro	INSQRT2			(0.707)				//power(2,-.5)

enum TILE {
	SPRITE,
	Z
}

#macro	XX				0
#macro	YY				1
#macro	ZZ				2

#macro	HH				0
#macro	VV				1

#macro	CENTER_X		(room_width/2*INSQRT2)		
#macro	CENTER_Y		(room_height/2*INSQRT2)

#macro	VIEW_NUM		360
#macro	CEL_W			24

#macro	mp				map_pos

#macro	PL_DMG_COOLD	(4/15)

#macro	Z_SPD_RANDOM_PLUS	0//random_range(-.01,.01)

//Macros de teclas
#macro	P_INPUT_WS			(keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S")))
#macro	INPUT_WS			(keyboard_check(ord("W")) - keyboard_check(ord("S")))
#macro	P_INPUT_DA			(keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A")))
#macro	INPUT_DA			(keyboard_check(ord("D")) - keyboard_check(ord("A")))

enum sd_pl {
	ind,
	cost,
	load,
	x_,
	y_,
	ang
}

enum pl {
	obj,
	cost,
	load,
	loadi
}

enum sd_zb {
	ind,
	cost,
	load,
	y_,
	ang
}

enum zb {
	obj,
	cost,
	load,
	loadi
}

enum lvl_st {
	play,
	put,
}

enum gm_st {
	menu,
	play,
	win,
	lose
}

#macro	CAMERA_UP		(-cam_angle+90)