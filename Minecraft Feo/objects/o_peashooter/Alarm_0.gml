/// @description Detectar zombie
alarm[0]	= 80
if state {
	var _pea		= instance_create_depth(x,y,depth,o_detector)
	_pea.z			= z
	_pea.peashooter	= id
}

