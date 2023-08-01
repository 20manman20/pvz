coorx		= ds_list_create()
coory		= ds_list_create()
coordd		= ds_list_create()

color_off	= make_color_hsv(0,25,255-((x/CEL_W + y/CEL_W) mod 2)*60)

dd	= 0

depth	= 10

alarm[0]	= 1

sprite_h	= [s_grass_00,
				s_grass_01,
				s_grass_02,
				s_grass_03,
				s_grass_04,
				s_grass_05,
				s_grass_06]