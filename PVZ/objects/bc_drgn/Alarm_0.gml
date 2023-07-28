if num_s > 0 {
	randomize()
	var create = instance_create_depth(x+4,y-10,depth-1,bc_drgn_fire)
	create.floor_	= y - 1
	create.cas_y	= cas_y
	
	num_s-=repeat_
	alarm[0]	= speed_s
}