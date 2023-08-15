
#region Semillas
for (var i = 0; i < seeds_max; ++i) {
	seed[i,pl_sd.y_]	= lerp(seed[i,pl_sd.y_],(i==seed_i)*5,.5)
	if seed[i,pl_sd.load] < (plant[seed[i,pl_sd.ind],pl.load]+1/60) {
		seed[i,pl_sd.load]	+= 1/60
	}
	seed[i,pl_sd.load]	= clamp(seed[i,pl_sd.load],0,plant[seed[i,pl_sd.ind],pl.load])
}

#endregion

mx	= clamp(mx,5,MAP_W-5)
my	= clamp(my,5,MAP_H-5)

var _mxmx,_mxmy,_mymx,_mymy,_mpmx,_mpmy,_mxoff,_myoff

_mxoff	= -24 + 24*(-lengthdir_y(power(2,.5),cam_angle_r+225)+1) + 20*(lengthdir_x(power(2,.5),cam_angle_r+225)+1)
_myoff	= 8	- 20*(-lengthdir_y(power(2,.5),cam_angle_r+225)+1) + 24*(lengthdir_x(power(2,.5),cam_angle_r+225)+1)	

_mxmy	= -lengthdir_y(power(2,.5),cam_angle_r+45)
_mxmx	= lengthdir_x(power(2,.5),cam_angle_r+45)
_mymy	= sign(-lengthdir_y(power(2,.5),cam_angle_r+45+90))
_mymx	= sign(lengthdir_x(power(2,.5),cam_angle_r+45+90))

_mpmx	= sign(-lengthdir_y(power(2,.5),cam_angle_r+45))
_mpmy	= sign(lengthdir_x(power(2,.5),cam_angle_r+45))

var _mx		= clamp(_mxmy*(mouse_y)/(CEL_W/2)+_mxmx*(mouse_x)/CEL_W + _mxoff,5,MAP_W-5)
var _my		= clamp(_mymy*(mouse_y)/(CEL_W/2)+_mymx*(mouse_x)/CEL_W + _myoff,5,MAP_H-5)


if map[1][# _mx+2*_mpmx, _my+2*_mpmy][2] == 0 {
	mx	= floor(_mx)+2*_mpmx
	my	= floor(_my)+2*_mpmy
	mz	= 2
} else {
	if map[1][# _mx+1*_mpmx, _my+1*_mpmy][2] == 0 {
		mx	= floor(_mx)+1*_mpmx
		my	= floor(_my)+1*_mpmy
		mz	= 2
	} else {
		if map[0][# _mx+1*_mpmx, _my+1*_mpmy][2] == 0 {
			mx	= floor(_mx)+1*_mpmx
			my	= floor(_my)+1*_mpmy
			mz	= 1
		}  else {
			if map[0][# _mx, _my][2] == 0 {
				mx	= floor(_mx)
				my	= floor(_my)
				mz	= 1
			} else {
				mx	= floor(_mx)
				my	= floor(_my)
				mz	= 0
			}
		}
	}
} 

sun_amount_r	= approach(sun_amount_r,sun_amount,3)


switch (level_state) {
	case lvl_st.none:
		spin_camera()
		change_seed_i()
		
		if mouse_check_button_pressed(mb_left) {
			if seed_i != -1 {
				plant_to_put	= instance_create_depth(x,y,depth,plant[seed[seed_i,pl_sd.ind],pl.obj])
				level_state	= lvl_st.put
			}
			
			if map[mz][# mx, my][0] != 0 {
				map[mz][# mx, my][1].angle_z	+= 90
			}
		}
		
		if mouse_check_button_pressed(mb_right) {
			
			if map[mz][# mx, my][0] != 0 {
				map[mz][# mx, my][1].angle_z	-= 90
			}
		}
		
        break;
	case lvl_st.put:
		spin_camera()
		
		if seed_i != -1 {
			var _cost	= plant[seed[seed_i,pl_sd.ind],pl.cost]
			
			if mouse_check_button_pressed(mb_left) && map[mz][# mx, my][0] == 0 && _cost <= sun_amount {
				audio_play_sound(choose(snd_put_plant_00,snd_put_plant_01),1,0)
				map[mz][# mx, my]		= [seed[seed_i,pl_sd.ind]+50,plant_to_put,1]
				sun_amount				-= _cost
				with (plant_to_put) {
				    bol_ready	= 1
					event_user(0)
				}
				seed[seed_i,pl_sd.load]	= 0
				level_state				= lvl_st.none
			}
		}
		
        break;
}

if spin_state {
	with o_par_block {
		coorx	= drawx[| cam_index]
		coory	= drawy[| cam_index]
		coordd	= drawdd[| cam_index]
	}
}