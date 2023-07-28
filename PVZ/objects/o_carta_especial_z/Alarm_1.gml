power_activate		= true
sprite_index		= spc_carta_count_z_01
var create			= instance_create_depth(x,y,depth-1,o_animated)
create.sprite_index = spc_carta_c
if id_ == 5  {
		instance_create_depth(x,y,depth-1,o_horda_fx)
		instance_destroy()
}
