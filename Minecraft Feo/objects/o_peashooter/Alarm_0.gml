/// @description Detectar zombie
alarm[0]	= 80
if bol_ready {
	var _pea		= instance_create_depth(x,y,depth,o_detector)
	_pea.hspeed		= lengthdir_x(18,angle_z)
	_pea.vspeed		= -lengthdir_y(18,angle_z)
	_pea.z			= z
	_pea.peashooter	= id
}

