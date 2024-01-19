if !instance_place(x,y,o_z_damage) {
	instance_create_depth(x,y,depth,o_z_damage)
} else {
	var _ins	= instance_place(x,y,o_z_damage)
	instance_destroy(_ins)
}