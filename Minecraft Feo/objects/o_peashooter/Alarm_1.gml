/// @description Disparar guisante
alarm[1]	= 80
if bol_zombie {
	var _pea		= instance_create_depth(x,y,depth,o_pea)
	_pea.hspeed		= lengthdir_x(5,angle_z)
	_pea.vspeed		= -lengthdir_y(5,angle_z)
	_pea.z			= z-18
	_pea.peashooter	= id
}

shoot_cad	= irandom_range(70,90)
