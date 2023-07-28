if num_s > 0 {
	randomize()
	var	sol_0	=	instance_create_depth(x,y-9,depth+1,sol)
	sol_0.alphay	=	sol_0.y-20
	sol_0.hspeed	=	0.4
	var sol_1	=	instance_create_depth(x,y-9,depth+1,sol)
	sol_1.alphay	=	sol_1.y-20
	sol_1.hspeed	=	-0.4
	
	num_s-=repeat_
	alarm[0]	= speed_s
}