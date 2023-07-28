/*z
var create			= instance_create_depth(x,y,depth-1,o_animated)
create.sprite_index = s_ptp1

if activated_ {
	var explode_			= instance_create_depth(x,y-7,depth-1,explode)
	explode_.damage_		= 500
	explode_.image_xscale	= 1.8
}