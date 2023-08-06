var _views	= 4
for (var i = 0; i < _views+1; ++i) {
	var _val	= CEL_W*CEL_W/2
	var _ind	= i*VIEW_NUM/_views
	coorx[| _ind]		= axis_x(x*power(_val,.5)/CEL_W,y*power(_val,.5)/CEL_W,45+360/VIEW_NUM*_ind)
	coory[| _ind]		= axis_y(x*power(_val,.5)/CEL_W,y*power(_val,.5)/CEL_W,45+360/VIEW_NUM*_ind,330) + z/2 - height_/2
	
	var _y				= -axis_y(x*power(_val,.5)/CEL_W,y*power(_val,.5)/CEL_W,45+360/VIEW_NUM*_ind,330)
	coordd[| _ind]		= _y*20 - 100000 + z
}


for (var i = 0; i < VIEW_NUM+1; ++i) {
	if i mod (VIEW_NUM/_views) != 0 {
		var _inf	= i - (i mod (VIEW_NUM/_views))
		var _sup	= _inf + VIEW_NUM/_views
		coorx[| i]		= lerp(coorx[| _inf],coorx[| _sup],(i-_inf)/(_sup-_inf))
		coory[| i]		= lerp(coory[| _inf],coory[| _sup],(i-_inf)/(_sup-_inf))
		coordd[| i]		= lerp(coordd[| _inf],coordd[| _sup],(i-_inf)/(_sup-_inf))
	}
}

if sprite_index == s_grass_00 {
	image_index	= choose(0,1)
	color_off	= make_color_hsv(0,25,255-((x/CEL_W + y/CEL_W) mod 2)*30)
	sprite_index = sprite_h[height_/24-1]
} else {
	color_off	= make_color_hsv(25,35,235)
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