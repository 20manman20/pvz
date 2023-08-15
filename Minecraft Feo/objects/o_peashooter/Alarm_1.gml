/// @description Disparar guisante
alarm[1]	= 80
if bol_zombie {
	var _pea		= instance_create_depth(x,y,depth,o_pea)
	_pea.z			= z-18
	_pea.peashooter	= id
}

