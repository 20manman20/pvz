if num_s > 0 {
	var create = instance_create_depth(x+4,y-7,depth-1,lzg_g)
	create.floor_	= y - 2
	create.cas_y	= cas_y
	var up = instance_create_depth(x+4,y-7,depth-1,lzg_g_tree)
	up.y_to		= y-7-20
	up.floor_	= y - 2
	up.cas_y	= cas_y-1
	var down = instance_create_depth(x+4,y-7,depth-1,lzg_g_tree)
	down.y_to	= y-7+20
	down.floor_	= y - 2
	down.cas_y	= cas_y+1
	
	num_s-=repeat_
	alarm[0]	= speed_s
}