
image_index	= -z/CEL_W

if place_meeting_3d(x,y,z-1,o_dirt) || place_meeting_3d(x,y,z-1,o_sand) sprite_index = s_dirt_big

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