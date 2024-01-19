event_inherited()

switch (state) {
	case cbg_st.entry:
		 sprite_i	= sprite_ar[cbg_st.entry]
		if image_index >= (image_number - 1) { 
			state	= sunf_st.idle
			sprite_i		= sprite_ar[cbg_st.idle]
			sprite_index	= sprite_i[_angle div 45][0]
			image_index		= 0
			var _ran	= 0
			alarm[1]	= 3 + _ran
			//alarm[2]	= 30 + _ran
			/// @description Iniciar
			//alarm[1]	= irandom_range(6,8)*60 // [seg]*[fps]4-6
		}
		break
    case cbg_st.idle:
		sprite_i	= sprite_ar[cbg_st.idle]
        break
    case cbg_st.shoot:
        sprite_i	= sprite_ar[cbg_st.shoot]
		if !instance_exists(bol_zombie) && image_index >= (image_number - 1) { 
			state	= cbg_st.idle
		}
        break
}

