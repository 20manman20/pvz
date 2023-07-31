image_index	+= (x/16 + y/16 + z/16) mod 2

/*
if z >= 0 && z <= 64 {
	var _cube = instance_create_depth(x,y,depth,o_stone)
	_cube.z	= z+16
}

if z > 0 {
	var _val = random_range(0,z/4)
	if _val < 8 image_index = 0
	else image_index = irandom_range(1,4)
	if z == 64 {
		var _val = irandom_range(0,4)
		if _val == 0 instance_destroy()
	}
	if z > 64 {
		var _val = irandom_range(0,2)
		if _val == 0 instance_destroy()
	}
}