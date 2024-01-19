/// @description Detectar zombie
alarm[1]	= shoot_cad
if bol_ready {
	var _cbg		= instance_create_depth(x,y,depth,o_detector_cbg)
	_cbg.hspeed		= lengthdir_x(24,angle_z)
	_cbg.vspeed		= lengthdir_y(24,angle_z)
	_cbg.z			= z
	_cbg.cbg		= id
}

