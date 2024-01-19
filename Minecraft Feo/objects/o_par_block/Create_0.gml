event_inherited()

for (var i = 0; i < VIEW_NUM; ++i) {
	drawx[i]		= 0
	drawy[i]		= 0
	drawdd[i]		= 0
}

bol_backyard	= in_range(x,backyard_00[XX]*CEL_W,(backyard_11[XX]+1)*CEL_W) && in_range(y,backyard_00[YY]*CEL_W,(backyard_11[YY]+1)*CEL_W)
//0
//120

color_00		= make_color_hsv((20											+256)	mod 256		//150
							,(25												+256)	mod 256		//+z
							,(255-((x/CEL_W + y/CEL_W) mod 2)*20*(bol_backyard)	+256)	mod 256)

color_01		= make_color_hsv((20											+256)	mod 256		//150
							,(45												+256)	mod 256		//+z
							,(225-((x/CEL_W + y/CEL_W) mod 2)*20*(bol_backyard)	+256)	mod 256)

image_blend	= color_00


//image_index	= irandom_range(0,image_number-2)

alarm[0]	= 1

coorx		= 0
coory		= 0
coordd		= 0


map_pos[XX]					= (x-CEL_W/2)/CEL_W
map_pos[YY]					= (y-CEL_W/2)/CEL_W
map_pos[ZZ]					= -z/16