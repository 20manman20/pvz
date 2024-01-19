event_inherited()

var	_x	= x div CEL_W,
	_y	= y div CEL_W,
	_z	= -z div CEL_W

if in_range(_x,0,mapw-1) && in_range(_y,0,maph-1) {
	if map[_z][# _x, _y][2] == map_tp.bl {
		instance_destroy()
	}
} else instance_destroy()