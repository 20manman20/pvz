if num_s > 0 {
	
	var left	=	instance_create_depth(x,y-10,depth-1,bmr_bmrn)
	left.x_go	=	o_cntrl.bg_x-20
	left.hspeed		=	-power(2*left.gravity*abs(x-left.x_go),1/2)
	left.gravity_direction	= 0 
	left.floor_	=	left.y + 12
	
	var right	=	instance_create_depth(x,y-10,depth-1,bmr_bmrn)
	right.x_go	=	o_cntrl.bg_x + o_cntrl.cas_l*11 + 10
	right.hspeed		=	power(2*right.gravity*abs(x-right.x_go),1/2)
	right.gravity_direction	= 180
	right.floor_=	right.y + 12
	
	num_s-=repeat_
	alarm[1]	= speed_s
	
}