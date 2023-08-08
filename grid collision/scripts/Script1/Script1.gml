function point_meeting_3d(_x,_y,_z) {
	if in_range(z,-24*(MAX_Z_LAYER+1)+1,MIN_Z_LAYER) {
		var _z_layer	= -(_z div 24)
		return col_layer[_z_layer][# _x div 24, _y div 24]
	} else return false
	
}

function place_meeting_3d(_x,_y,_z) {
	
	var _x1 = (bbox_left+(_x-x))	div 24,
	    _y1 = (bbox_top+(_y-y))	div 24,
	    _x2 = (bbox_right+(_x-x))	div 24,
	    _y2 = (bbox_bottom+(_y-y))	div 24,
		_z1	= (floor((-_z-12)/24+.5)),
		_z2	= (floor((-(_z-height_)-12)/24+.5))
		
	for(var i = _x1; i <= _x2; i++){
		for(var j = _y1; j <= _y2; j++){
			for (var k = _z1; k <= _z2 ; ++k) {
				if in_range(k,MIN_Z_LAYER,MAX_Z_LAYER) {
					if col_layer[k][# i, j] {
						return true
					}
				}
			}
			
		}
	}

	return false
}

function tilemap_to_grid(_tilemap,_grid) {
	var tile_map	= layer_tilemap_get_id(_tilemap)

	for (var tx = 0; tx < MAP_W; ++tx) {
		for (var ty = 0; ty < MAP_H; ++ty) {
			var tile				= tilemap_get(tile_map,tx,ty)
			_grid[# tx, ty]	= tile_get_index(tile)
		}
	}
	
}

function in_range(_val,_min,_max) {
	return ((_min <= _val) && (_val <= _max))
}
