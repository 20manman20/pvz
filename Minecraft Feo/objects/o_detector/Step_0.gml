//event_inherited()

if !(in_range(x,backyard_00[XX]*CEL_W-CEL_W,backyard_11[XX]*CEL_W+CEL_W) && in_range(y,backyard_00[YY]*CEL_W-CEL_W,backyard_11[YY]*CEL_W+64)) {
	instance_destroy()
} else {
	var	_x	= x div CEL_W,
		_y	= y div CEL_W,
		_z	= -z div CEL_W
		
	if map[_z][# _x, _y][2] == map_tp.bl {
		bol_wall	= 1
	}
}