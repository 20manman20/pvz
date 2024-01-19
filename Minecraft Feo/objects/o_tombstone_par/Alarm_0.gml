var _map_pos;

_map_pos[XX]					= (x-CEL_W/2)/CEL_W
_map_pos[YY]					= (y-CEL_W/2)/CEL_W

for (var i = max_z_layer; i >= 0; --i) {
	if map[i][# _map_pos[XX], _map_pos[YY]][2] != -1 {
		z				= -(i+1)*CEL_W
		_map_pos[ZZ]		= i+1
		break
	}
	if i == 0 {
		z	= 0
		map_pos[ZZ]		= 0
	}
}