
//image_index	= -z/CEL_W

//if place_meeting_3d(x,y,z-1,o_dirt) || place_meeting_3d(x,y,z-1,o_sand) sprite_index = s_dirt_big

for (var i = 0; i < 20+1; ++i) {
	var _ind	= i*VIEW_NUM/20
	var _val	= CEL_W*CEL_W/2
	coorx[| _ind]	= axis_x(x*power(_val,.5)/CEL_W,y*power(_val,.5)/CEL_W,45+360/VIEW_NUM*i)
	coory[| _ind]	= axis_y(x*power(_val,.5)/CEL_W,y*power(_val,.5)/CEL_W,45+360/VIEW_NUM*i,330) + z/2
	coordd[| _ind]	= -coory[| _ind]	- 100000 + z
	//coorx[i]	= axis_x(x,y,45+360/VIEW_NUM*i)
	//coory[i]	= axis_y(x,y,45+360/VIEW_NUM*i,330)
	
}





/*
if z >= 0 && z <= 64 {
	var _cube = instance_create_depth(x,y,depth,o_stone)
	_cube.z	= z+16
}

if z > 0 {
	var _val = random_range(0,z/4)
	if _val < 8 image_index = 3
	else image_index = irandom_range(3,6)
	if z == 64 {
		var _val = irandom_range(0,4)
		if _val == 0 instance_destroy()
	}
	if z > 64 {
		var _val = irandom_range(0,2)
		if _val == 0 instance_destroy()
	}
}