for (var i = 0; i < 65; ++i) {
	coorx[i]	= axis_x(x*power(128,.5)/16,y*power(128,.5)/16,45+360/32*i)
	coory[i]	= axis_y(x*power(128,.5)/16,y*power(128,.5)/16,45+360/32*i,330)
}

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