function zst_walk() {
	var _inside	= in_range(x,48,room_width-48) && in_range(y,48,room_height-48)

	if spd[HH] != 0 {
		var _col	= -1
		if _inside {
			_col	= place_meeting_3d(x+spd[HH],y,z)
		}
		switch (_col) {
		    case map_tp.bl:
		        spd[ZZ] = -3
		        break
			case map_tp.pl:
				image_index		= 0
				state			= z_st.atk
				plant_atk		= map_meeting(x+spd[HH],y,z)[1]
				
				break
			default:
				if place_meeting(x+sign(spd[HH]*20),y,o_par_zombie) {
					var _col_zombie	= instance_place(x+sign(spd[HH]*20),y,o_par_zombie)
					if _col_zombie.state == z_st.death {
						x += spd[HH]
					}
				} else x += spd[HH]
				break
		}
	}
	
	if spd[VV] != 0 {
		var _col	= -1
		if _inside {
			_col	= place_meeting_3d(x,y+spd[VV],z)
		}
		switch (_col) {
		    case map_tp.nn:
		        y += spd[VV]
		        break
		    case map_tp.bl:
		        spd[ZZ] = -3
		        break
			case map_tp.pl:
				image_index		= 0
				state			= z_st.atk
				plant_atk		= map_meeting(x,y+spd[VV],z)[1]
				break
			case map_tp.sbl:
				y += spd[VV]
				break
		}
	}

	if !bol_floor {
		spd[ZZ]	= clamp(spd[ZZ]+.5,-10,10)
	} else {
		_col	= place_meeting_3d(x+lengthdir_x(16,angle_z)*sign(spd[HH]),y+lengthdir_y(16,angle_z)*sign(spd[VV]),z+1)
		switch (_col) {
			case 1:
				/*
				spd[HH]	= 0
				spd[ZZ] = -3
			
				var _map			= map_meeting(x+spd[HH],y,z+1)
				plant_stomp			= _map[1]
				*/
				spd[ZZ] = -3
				state			= z_st.stomp
				plant_stomp		= map_meeting(x-16*sign(spd[HH]),y,z+1)[1]
				hitbox_stomp	= instance_create_depth(plant_stomp.x,plant_stomp.y,depth,o_z_damage)
				hitbox_stomp.time_damage	= .4*60
				hitbox_stomp.damage			= 30
				break
		
		}
	}

	

	if _inside {
		bol_floor	= (place_meeting_3d(x,y,z+1) == 0)

		repeat (abs(spd[ZZ])) {
			if z+sign(spd[ZZ]) >= 0 {
				spd[ZZ]	= 0
				break
			} else if (place_meeting_3d(x,y,z+sign(spd[ZZ])) == 0) {
				spd[ZZ]	= 0
				break
			} else z	+= sign(spd[ZZ])
		}
	}

}

