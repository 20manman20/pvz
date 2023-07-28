if num_s > 0 {
	switch repeat_ {
		case 1:
			randomize()
			var create = instance_create_depth(x+4,y-10,depth-1,lzg_g)
			create.floor_	= y - 1
			create.cas_y	= cas_y
		break
		case 2:
			randomize()
			var rndm_	= random_range(-1,1)
			var create = instance_create_depth(x+4,y-7+rndm_,depth-1,lzg_g)
			create.hspeed  *= random_range(1.1,0.9)
			create.floor_	= y + rndm_ - 2
			create.cas_y	= cas_y
			var rndm_	= random_range(-1,1)
			var create = instance_create_depth(x+4,y-13+rndm_,depth-1,lzg_g)
			create.hspeed  *= random_range(1.2,0.8)
			create.floor_	= y + rndm_ - 2
			create.cas_y	= cas_y
		break
	}
	
	num_s-=repeat_
	alarm[0]	= speed_s
}