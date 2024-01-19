sun_amount_r	= sun_amount

seed_i			= -1
seeds_max		= 4

for (var i = 0; i < seeds_max; ++i) {
	var _ind			= i
	seed[i,sd_pl.ind]	= _ind
	seed[i,sd_pl.cost]	= plant[_ind,pl.cost]		//0
	seed[i,sd_pl.load]	= plant[_ind,pl.loadi]
	seed[i,sd_pl.x_]	= cam_w/2 + (i-3)*40		//cam_w/2+172 
	seed[i,sd_pl.y_]	= cam_h-13
	seed[i,sd_pl.ang]	= 0
}

mx		= 0
my		= 0
mz		= 0

mxprev	= 0
myprev	= 0
mzprev	= 0

level_state		= lvl_st.play
plant_to_put	= noone

alarm[0]		= 60*first_sun_time
//alarm[1]		= 60

mouse_in_backyard	= false

help		= 0

font_cost		= font_add_sprite_ext(s_fnt_cost,"0123456789",true,1)
font_sun		= font_add_sprite_ext(s_fnt_sun,"0123456789",true,1)
