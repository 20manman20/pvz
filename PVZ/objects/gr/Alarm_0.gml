if num_s > 0 {
	randomize()
	var sol__ =	instance_create_depth(x,y-10,depth+1,sol)
	sol__.alphay	  =	sol__.y-15
	
	num_s-=repeat_
	alarm[0]	= speed_s
	
	if sprite_index == s_g {
		i_yscale		=	0.8
		i_xscale		=	1.25
	}
}