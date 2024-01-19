/// @description Disparar guisante
alarm[2]	= shoot_cad
if instance_exists(bol_zombie) {
	var _pea		= instance_create_depth(x+lengthdir_x(6,angle_z),y+lengthdir_y(6,angle_z),depth,o_pea)
	_pea.hspeed		= lengthdir_x(4.5,angle_z)
	_pea.vspeed		= lengthdir_y(4.5,angle_z)
	_pea.z			= z-20
	_pea.peashooter	= id
}

//shoot_cad	= irandom_range(70,90)
