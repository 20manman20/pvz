vecx			= lerp(vecx,lengthdir_x(1,cam_angle_r),angle_spd)
vecy			= lerp(vecy,lengthdir_y(1,cam_angle_r),angle_spd)

cam_angle		= point_direction(0,0,vecx,vecy) % 360
cam_index		= round(round(cam_angle)/(360/VIEW_NUM) % VIEW_NUM)

var	a_hinput	= mouse_wheel_up()-mouse_wheel_down()

cam_angle_r		= (cam_angle_r+cam_ang_change*a_hinput+360)%360

if point_in_rectangle(mouse_x,mouse_y,room_width/2-2.5*41,cam_h+cam_y-13-40,room_width/2+2.5*41,cam_h+cam_y-13) {
	seeds_i	= (mouse_x-room_width/2+41*2.5) div 41
} else seeds_i	= -1

for (var i = 0; i < seeds_max; ++i) {
	plant[i,4]	= lerp(plant[i,4],(i==seeds_i)*5,.5)
}



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


