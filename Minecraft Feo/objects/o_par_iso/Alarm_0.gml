var _views	= 4
for (var i = 0; i < _views+1; ++i) {
	var _ind	= i*VIEW_NUM/_views
	var _x		= axis_x(x,y,45+360/VIEW_NUM*_ind)
	var _y		= axis_y(x,y,45+360/VIEW_NUM*_ind,330)
	
	coorx[| _ind]		= _x
	coory[| _ind]		= _y + z/2
	
	coordd[| _ind]		= round(axis_dd(x,y,45+360/VIEW_NUM*_ind))
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


	color_off	= make_color_hsv((	0									+256) mod 256			//150
								,(25									+256) mod 256			//+z
								,(255-((x/CEL_W + y/CEL_W) mod 2)*30	+256) mod 256)

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