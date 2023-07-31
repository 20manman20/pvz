for (var i = 0; i < VIEW_NUM+1; ++i) {
	var _val	= CEL_W*CEL_W/2
	coorx[i]	= axis_x(x*power(_val,.5)/CEL_W,y*power(_val,.5)/CEL_W,45+360/VIEW_NUM*i)
	coory[i]	= axis_y(x*power(_val,.5)/CEL_W,y*power(_val,.5)/CEL_W,45+360/VIEW_NUM*i,330)
	//coorx[i]	= axis_x(x,y,45+360/VIEW_NUM*i)
	//coory[i]	= axis_y(x,y,45+360/VIEW_NUM*i,330)
	
}

color_off	= make_color_hsv(0,25,255-((x/CEL_W + y/CEL_W) mod 2)*12)

/*
coorx	= [((x-room_width/2)-(y-room_height/2))/2+room_width/2,
			((x-room_width/2)+(y-room_height/2))/2+room_width/2,
			-((x-room_width/2)-(y-room_height/2))/2+room_width/2,
			-((x-room_width/2)+(y-room_height/2))/2+room_width/2]
coory	= [((x-room_width/2)+(y-room_height/2))/4+room_height/2,
			-((x-room_width/2)-(y-room_height/2))/4+room_height/2,
			-((x-room_width/2)+(y-room_height/2))/4+room_height/2,
			((x-room_width/2)-(y-room_height/2))/4+room_height/2]
*/

dd	= 0

depth	= 10