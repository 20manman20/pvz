event_inherited()

switch (state) {
    case z_st.entry:
		sprite_i	= sprite_ar[z_st.entry]
		sprite_i_0	= sprite_i[_angle div 45][0]

		if image_index >= image_number - 2 {
			state		= z_st.walk
			sprite_i	= sprite_ar[z_st.walk]
			sprite_i_0	= sprite_i[_angle div 45][0]

			image_index	= 0
		}
        break;
    case z_st.walk:
		spd[XX]		= lengthdir_x(spd_hv_max,angle_z)
		spd[YY]		= lengthdir_y(spd_hv_max,angle_z)
		sprite_i	= sprite_ar[z_st.walk]
		sprite_i_0	= sprite_i[_angle div 45][0]
	
		if place_meeting(x,y,o_turn) {
			var _block	= instance_place(x,y,o_turn)
			if point_distance(x,y,_block.x,_block.y) < 2 {
				angle_z	= _block.angle_z
			}
		}
		
		zst_walk()
        break;
	case z_st.atk:
		sprite_i	= sprite_ar[z_st.atk]
		sprite_i_0	= sprite_i[_angle div 45][0]

		if !instance_exists(plant_atk) {
				instance_destroy(hitbox_atk)
				state	= z_st.walk
		} else {
			if !instance_exists(hitbox_atk) {
				hitbox_atk		= instance_create_depth(plant_atk.x,plant_atk.y,depth,o_z_damage)
				hitbox_atk.myzombie	= id
			}
		}
        break;
	case z_st.stomp:
		if !instance_exists(plant_stomp) {
			instance_destroy(hitbox_stomp)
			state	= z_st.walk
		}
		
		if !bol_floor {
			spd[ZZ]	= clamp(spd[ZZ]+.3,-10,10)
		} else spd[ZZ] = -2
		
		bol_floor	= (place_meeting_3d(x,y,z+1) != -1) || (z >= 0)
		
		repeat (abs(spd[ZZ])) {
			if z+sign(spd[ZZ]) >= 0 {
				spd[ZZ]	= 0
				break
			} else if (place_meeting_3d(x,y,z+sign(spd[ZZ])) != -1) {
				spd[ZZ]	= 0
				break
			} else z	+= sign(spd[ZZ])
		}
        break;
	case z_st.tobasic:
		spd	= [0,0,0]
		sprite_i	= sprite_ar[z_st.tobasic]
		sprite_i_0	= sprite_i[_angle div 45][0]
		
		if round(image_index) >= (image_number-1) {
			state	= z_st.walk
			
			sprite_i	= sprite_ar[z_st.walk]
			sprite_i_0	= sprite_i[_angle div 45][0]
			sprite_i_1	= sprite_i[_angle div 45][0]
			image_index	= 0
		}
		break;
	case z_st.death:
		if instance_exists(hitbox_atk) {
			instance_destroy(hitbox_atk)
		}
		if !head_exists {
			create_flying_obj(0,z-48)
			head_exists			= true
		}
		sprite_i	= sprite_ar[z_st.death]
		sprite_i_0	= sprite_i[_angle div 45][0]
		if image_index >= image_number - 2 {
			instance_destroy()
		}
	break
}