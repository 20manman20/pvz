
for (var i = 0; i < VIEW_NUM; ++i) {
	var _val	= (360/VIEW_NUM)*i
	var _val_r	= _val
	drawx[i]		= x+lengthdir_x(-z/24*32,-_val+90)
	drawy[i]		= y+lengthdir_y(-z/24*32,-_val+90)
	drawdd[i]		= axis_dd(x,y,z,_val)
}

coorx	= drawx[cam_index]
coory	= drawy[cam_index]
coordd	= drawdd[cam_index]

map[-z/CEL_W]
	[# map_pos[XX],   
		map_pos[YY]]		= [block_id,id,block_type]

//depth	= coordd

/*
image_blend	= make_color_hsv((	0									+256) mod 256			//150
							,(25									+256) mod 256			//+z
							,(255-((x/CEL_W + y/CEL_W) mod 2)*30	+256) mod 256)
*/
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