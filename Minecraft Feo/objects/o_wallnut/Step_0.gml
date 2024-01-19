event_inherited()

switch (state) {
    case wlnt_st.entry:
		sprite_i	= sprite_entry
		if image_index >= (image_number - 1) { 
			state			= wlnt_st.idle
			sprite_i		= sprite_ar[degrad]
			sprite_index	= sprite_i[_angle div 45][0]
		 	image_index		= 0
			//alarm[1]	= irandom_range(6,8)*60 // [seg]*[fps]4-6
		}
        break
    case wlnt_st.idle:
		if hp_ <= hp_max/3 {
			degrad	= 2
		} else {
			if hp_ <= 2*(hp_max/3) {
				degrad	= 1
			} else {
				degrad	= 0
			}
		}

		sprite_i	= sprite_ar[degrad]

        break
}
