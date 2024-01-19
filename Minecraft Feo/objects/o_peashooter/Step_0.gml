event_inherited()

switch (state) {
	 case pea_st.entry:
        sprite_i	= sprite_ar[pea_st.entry]
		if image_index >= (image_number - 1) { 
			state	= pea_st.idle
			var _ran	= 0
			alarm[1]	= 10 + _ran
		}
        break
    case pea_st.idle:
		sprite_i	= sprite_ar[pea_st.idle]
        break
    case pea_st.shoot:
        sprite_i	= sprite_ar[pea_st.shoot]
		if !instance_exists(bol_zombie) && image_index >= (image_number - 1) { 
			state	= pea_st.idle
		}
        break
}



