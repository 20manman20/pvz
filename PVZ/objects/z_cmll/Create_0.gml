event_inherited()
type		= ""
costo		= 75
speed_		= 3
health_max	= 300
health_		= 300

select_		= false

speed_max	= speed_

var uno_ = instance_create_depth(x-10,y,depth,z_cmll_z)
uno_.i_cmllo	=	0
var dos_ = instance_create_depth(x+3,y,depth,z_cmll_z)
dos_.i_cmllo	=	1

instance_destroy()