/// @description Detectar zombie
alarm[1]	= shoot_cad
if bol_ready {
	var _pea		= instance_create_depth(x,y,depth,o_detector)
	_pea.hspeed		= lengthdir_x(24,angle_z)
	_pea.vspeed		= lengthdir_y(24,angle_z)
	_pea.z			= z
	_pea.peashooter	= id
}

