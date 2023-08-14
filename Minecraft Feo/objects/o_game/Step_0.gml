
#region Semillas


for (var i = 0; i < seeds_max; ++i) {
	seed[i,pl_sd.y_]	= lerp(seed[i,pl_sd.y_],(i==seed_i)*5,.5)
	if seed[i,pl_sd.load] < (plant[seed[i,pl_sd.ind],pl.load]+1/60) {
		seed[i,pl_sd.load]	+= 1/60
	}
	seed[i,pl_sd.load]	= clamp(seed[i,pl_sd.load],0,plant[seed[i,pl_sd.ind],pl.load])
}

#endregion

switch (cam_angle_r) {
    case 0:
		var _mx		= (mouse_y)/12+(mouse_x)/24 - 24
		var _my		= (mouse_y)/12-(mouse_x)/24 + 8
	
		if col_layer[1][# _mx+2, _my+2] != 0 {
			mx	= floor(_mx)+2
			my	= floor(_my)+2
			mz	= 2
		} else {
			if col_layer[1][# _mx+1, _my+1] != 0 {
				mx	= floor(_mx)+1
				my	= floor(_my)+1
				mz	= 2
			} else {
				if col_layer[0][# _mx+1, _my+1] != 0 {
					mx	= floor(_mx)+1
					my	= floor(_my)+1
					mz	= 1
				}  else {
					if col_layer[1][# _mx, _my] != 0 {
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
		var _mx		= (mouse_y)/12-(mouse_x)/24 + 48 - 32
		var _my		= -((mouse_y)/12+(mouse_x)/24) + 48 + 8
		
		if col_layer[1][# _mx+2, _my-2] != 0 {
			mx	= floor(_mx)+2
			my	= floor(_my)-2
			mz	= 2
		} else {
			if col_layer[1][# _mx+1, _my-1] != 0 {
				mx	= floor(_mx)+1
				my	= floor(_my)-1
				mz	= 2
			} else {
				if col_layer[0][# _mx+1, _my-1] != 0 {
					mx	= floor(_mx)+1
					my	= floor(_my)-1
					mz	= 1
				}  else {
					if col_layer[1][# _mx, _my] != 0 {
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
		var _mx		= -((mouse_y)/12+(mouse_x)/24) - 24 + 88
		var _my		= -((mouse_y)/12-(mouse_x)/24) + 8 + 8
		
		if col_layer[1][# _mx-2, _my-2] != 0 {
			mx	= floor(_mx)-2
			my	= floor(_my)-2
			mz	= 2
		} else {
			if col_layer[1][# _mx-1, _my-1] != 0 {
				mx	= floor(_mx)-1
				my	= floor(_my)-1
				mz	= 2
			} else {
				if col_layer[0][# _mx-1, _my-1] != 0 {
					mx	= floor(_mx)-1
					my	= floor(_my)-1
					mz	= 1
				}  else {
					if col_layer[1][# _mx, _my] != 0 {
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
		var _mx		= -((mouse_y)/12-(mouse_x)/24) - 24+48
		var _my		= (mouse_y)/12+(mouse_x)/24 + 8-40
		
		if col_layer[1][# _mx-2, _my+2] != 0 {
			mx	= floor(_mx)-2
			my	= floor(_my)+2
			mz	= 2
		} else {
			if col_layer[1][# _mx-1, _my+1] != 0 {
				mx	= floor(_mx)-1
				my	= floor(_my)+1
				mz	= 2
			} else {
				if col_layer[0][# _mx-1, _my+1] != 0 {
					mx	= floor(_mx)-1
					my	= floor(_my)+1
					mz	= 1
				}  else {
					if col_layer[1][# _mx, _my] != 0 {
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


switch (level_state) {
	case lvl_st.none:
	
		if point_in_rectangle(mouse_x,mouse_y,room_width/2-2.5*41,cam_h+cam_y-13-40,room_width/2+2.5*41,cam_h+cam_y-13) {
			seed_i	= (mouse_x-room_width/2+41*2.5) div 41
		} else seed_i	= -1

		spin_camera()
		
		if mouse_check_button_pressed(mb_left) {
			if seed_i != -1 {
				plant_to_put	= instance_create_depth(x,y,depth,plant[seed[seed_i,pl_sd.ind],pl.obj])
				level_state	= lvl_st.put
			}
		}
		
		
        break;
	case lvl_st.put:
		spin_camera()
		
		if mouse_check_button_pressed(mb_left) {
			plant_to_put.state	= 1
			seed[seed_i,pl_sd.load]	= 0
			level_state	= lvl_st.none
		}
		
        break;
}