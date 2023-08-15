
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

switch (cam_angle_r) {
    case 0:
		var _mx		= clamp((mouse_y)/12+(mouse_x)/24 - 24,5,MAP_W-5)
		var _my		= clamp((mouse_y)/12-(mouse_x)/24 + 8,5,MAP_H-5)
	
		if map[1][# _mx+2, _my+2][0] != 0 {
			mx	= floor(_mx)+2
			my	= floor(_my)+2
			mz	= 2
		} else {
			if map[1][# _mx+1, _my+1][0] != 0 {
				mx	= floor(_mx)+1
				my	= floor(_my)+1
				mz	= 2
			} else {
				if map[0][# _mx+1, _my+1][0] != 0 {
					mx	= floor(_mx)+1
					my	= floor(_my)+1
					mz	= 1
				}  else {
					if map[1][# _mx, _my][0] != 0 {
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
        break
    case 90:
		var _mx		= clamp((mouse_y)/12-(mouse_x)/24 + 48 - 32,5,MAP_W-5)
		var _my		= clamp(-((mouse_y)/12+(mouse_x)/24) + 48 + 8,5,MAP_H-5)
		
		if map[1][# _mx+2, _my-2][0] != 0 {
			mx	= floor(_mx)+2
			my	= floor(_my)-2
			mz	= 2
		} else {
			if map[1][# _mx+1, _my-1][0] != 0 {
				mx	= floor(_mx)+1
				my	= floor(_my)-1
				mz	= 2
			} else {
				if map[0][# _mx+1, _my-1][0] != 0 {
					mx	= floor(_mx)+1
					my	= floor(_my)-1
					mz	= 1
				}  else {
					if map[1][# _mx, _my][0] != 0 {
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
        break
	case 180:
		var _mx		= clamp(-((mouse_y)/12+(mouse_x)/24) - 24 + 88,5,MAP_W-5)
		var _my		= clamp(-((mouse_y)/12-(mouse_x)/24) + 8 + 8,5,MAP_H-5)
		
		if map[1][# _mx-2, _my-2][0] != 0 {
			mx	= floor(_mx)-2
			my	= floor(_my)-2
			mz	= 2
		} else {
			if map[1][# _mx-1, _my-1][0] != 0 {
				mx	= floor(_mx)-1
				my	= floor(_my)-1
				mz	= 2
			} else {
				if map[0][# _mx-1, _my-1][0] != 0 {
					mx	= floor(_mx)-1
					my	= floor(_my)-1
					mz	= 1
				}  else {
					if map[1][# _mx, _my][0] != 0 {
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
		break
	case 270:
		var _mx		= clamp(-((mouse_y)/12-(mouse_x)/24) - 24+48,5,MAP_W-5)
		var _my		= clamp((mouse_y)/12+(mouse_x)/24 + 8-40,5,MAP_H-5)
		
		if map[1][# _mx-2, _my+2][0] != 0 {
			mx	= floor(_mx)-2
			my	= floor(_my)+2
			mz	= 2
		} else {
			if map[1][# _mx-1, _my+1][0] != 0 {
				mx	= floor(_mx)-1
				my	= floor(_my)+1
				mz	= 2
			} else {
				if map[0][# _mx-1, _my+1][0] != 0 {
					mx	= floor(_mx)-1
					my	= floor(_my)+1
					mz	= 1
				}  else {
					if map[1][# _mx, _my][0] != 0 {
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
		break
}

mx	+= keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"))
my	+= keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))
mz	+= keyboard_check_pressed(ord("Q")) - keyboard_check_pressed(ord("E"))


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
		
		if mouse_check_button_pressed(mb_left) && map[mz][# mx, my][0] == 0 {
			map[mz][# mx, my]	= [seed[seed_i,pl_sd.ind]+50,plant_to_put]
			plant_to_put.state	= 1
			seed[seed_i,pl_sd.load]	= 0
			level_state	= lvl_st.none
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