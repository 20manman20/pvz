if num_s > 0 {
	
	if repeat_s == 1 {
		var	x_					=	o_cntrl.x
		var y_					=	o_cntrl.y-8
		var proy				=	scr_proyectil(x-4,y-10,x_,y_,300,450,lnz_pltn_pltn)
		proy.floor_x			=	x_
		proy.floor_y			=	y_
		proy.id_				=	id
	} else {
		repeat(4) {
			randomize()
			var	x_					=	o_cntrl.bg_x + o_cntrl.cas_l*choose(0,1,2,3,4,5,6,7,8,9)
			var y_					=	o_cntrl.bg_y + o_cntrl.cas_l*choose(0,1,2,3,4,5)
			var proy				=	scr_proyectil(x-4,y-10,x_,y_,300,450,lnz_pltn_pltn)
			proy.floor_x			=	x_
			proy.floor_y			=	y_
			proy.id_				=	id
		}
	}

	num_s-=repeat_s
	alarm[0]	= speed_s
}