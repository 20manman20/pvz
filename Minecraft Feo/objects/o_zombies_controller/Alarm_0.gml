/// @description Generar soles
//var _brain	= instance_create_depth(irandom_range(cam_x+96,cam_x+cam_w-96),cam_y-64,depth,o_brain)
if !near_flag() {
	add_brains(50)
}

alarm[0]		= 60*brain_fall_cad
