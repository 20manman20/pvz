create_x	=	instance_create_depth(x,y-11,depth-1,cct_p_x)
create_x.cas_y		=	cas_y
create_x.floor_		=	create_x.y + 12
create_x.id_		=	id
create_x.x_go		=	410
create_x.hspeed		=	power(2*create_x.gravity*abs(x-create_x.x_go),1/2)
create_x.init_hsp_	=	create_x.hspeed