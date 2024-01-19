/// @description Lanzar Col
alarm[2]	= shoot_cad
if instance_exists(bol_zombie) {
	var _pea		= instance_create_depth(x,y,depth,o_cabbage)
	var _hvspd		= 5
	_pea.hspeed		= lengthdir_x(_hvspd,angle_z)
	_pea.vspeed		= lengthdir_y(_hvspd,angle_z)
	var _dis		= point_distance(x,y,target_z[XX],target_z[YY])
	var _t			= _dis/_hvspd
	_pea.z			= z-48
	var _dif		= z-48 - target_z[ZZ]
	var _grav		= .4
	_pea.zspeed		= -(2*_dif+_t*_t*_grav)*(1/(2*_t))
	_pea.cbg		= id
}

//shoot_cad	= irandom_range(70,90)
