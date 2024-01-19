/// @description Generar semillas
//2

if seeds_max < 8 {
	seeds_max++

	var i		= seeds_max-1
	var _ind	= irandom_range(0,3)
	seed[i,sd_pl.ind]	= _ind
	seed[i,sd_pl.cost]	= 0
	seed[i,sd_pl.load]	= plant[_ind,pl.load]
	seed[i,sd_pl.x_]	= cam_w/2+172 
	seed[i,sd_pl.y_]	= cam_h-13
	seed[i,sd_pl.ang]	= 0
}
alarm[1]		= 60*irandom_range(2,3)
