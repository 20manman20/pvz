function recharging_pl_seeds(_i) {
	#region Mover y recargar semillas
	for (var i = 0; i < seeds_max; ++i) {
		if seed[i,sd_pl.load] < (plant[seed[i,sd_pl.ind],pl.load]+1/60) {
			seed[i,sd_pl.load]	+= 1/60
		}
		seed[i,sd_pl.load]	= clamp(seed[i,sd_pl.load],0,plant[seed[i,sd_pl.ind],pl.load])
	}

	#endregion
}

function cas_position() {
		#region	Posición de casilla
	var	_botmx		= clamp(mouse_x div 24,4,mapw-4),
		_botmy		= clamp(mouse_y div 24,4,maph-4),
		_mx			= _botmx,
		_my			= _botmy,
		_mpmx		= sign(lengthdir_y(2,cam_angle)),
		_mpmy		= sign(lengthdir_x(2,cam_angle))

	mz				= 0

	for (var i = max_z_layer-1; i >= 0; --i) {
		var _found	= false
		for (var j = 1; j >= 0; --j) {
			var _x	= _botmx+(i+j)*_mpmx
			var _y	= _botmy+(i+j)*_mpmy
			if map[i][# clamp(_x,0,mapw-1), clamp(_y,0,maph-1)][2] == map_tp.bl {
				_mx		= clamp(_x,0,mapw-1)
				_my		= clamp(_y,0,maph-1)
				mz		= i+1
				_found	= true
				break
			}
		}
		if _found break
	}

	/*
	if map[1][# _botmx+2*_mpmx, _botmy+2*_mpmy][2] == 0 {
		_mx	= _botmx+2*_mpmx
		_my	= _botmy+2*_mpmy
		mz	= 2
	} else {
		if map[1][# _botmx+1*_mpmx, _botmy+1*_mpmy][2] == 0 {
			_mx	= _botmx+1*_mpmx
			_my	= _botmy+1*_mpmy
			mz	= 2
		} else {
			if map[0][# _botmx+1*_mpmx, _botmy+1*_mpmy][2] == 0 {
				_mx	= _botmx+1*_mpmx
				_my	= _botmy+1*_mpmy
				mz	= 1
			}  else {
				if map[0][# _botmx, _botmy][2] == 0 {
					_mx	= _botmx
					_my	= _botmy
					mz	= 1
				} 
			}
		}
	} 
	*/
	mx		= clamp(_mx,0,mapw-1)
	my		= clamp(_my,0,mapw-1)


	#endregion

}

function resalt_row() {
	for (var i = backyard_00[XX]; i < (backyard_11[XX]+1); ++i) {
		if mouse_in_backyard && in_range(my,backyard_00[YY],backyard_11[YY]) {
			for (var j = 0; j < (max_z_layer); ++j) {
				if map[j][# i, myprev][2] == map_tp.bl && instance_exists(map[j][# i, my][1]) {
					with map[j][# i, myprev][1] {
						image_blend	= color_01
					}
				}
			}
		}
	
		if (myprev != my) || !mouse_in_backyard {
			for (var j = 0; j < (max_z_layer); ++j) {
				if map[j][# i, myprev][2] == map_tp.bl && instance_exists(map[j][# i, myprev][1]) {
					with map[j][# i, myprev][1] {
						image_blend	= color_00
					}
				}
			}
		}
	}

}

function resalt_seed_y(_i) {
	for (var i = 0; i < seeds_max; ++i) {
		seed[i,sd_pl.y_]	= lerp(seed[i,sd_pl.y_],cam_h-13-((i==_i) || (seed_i == i))*5,.5)
	}
}