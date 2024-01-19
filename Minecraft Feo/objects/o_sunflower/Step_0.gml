event_inherited()

i_scale[HH]	= lerp(i_scale[HH],1,.1)
i_scale[VV]	= lerp(i_scale[VV],1,.1)

switch (state) {
	 case sunf_st.entry:
        sprite_i	= sprite_ar[sunf_st.entry]
		if image_index >= (image_number - 1) { 
			state	= sunf_st.idle
			sprite_i		= sprite_ar[sunf_st.idle]
			sprite_index	= sprite_i[_angle div 45][0]
			image_index		= 0
			//alarm[1]	= irandom_range(6,8)*60 // [seg]*[fps]4-6
		}
        break
    case sunf_st.idle:
		sprite_i	= sprite_ar[sunf_st.idle]
		if bol_anim {
			if angle_anim < 180 {
				angle_anim+=8
			} else {
				bol_sun		= false
				bol_anim	= 0
				angle_anim	= 0
			}
			var _h	= 1-lengthdir_y(.4,angle_anim)
			i_scale		= [_h,1/_h]
	
			if round(angle_anim) == 90 && !bol_sun {
				var _sun	= instance_create_depth(x,y,depth-1,o_sun)
				_sun.state		= sun_st.jump
				_sun.z			= z-32
				_sun.zstart		= _sun.z
				bol_sun	= true
			}
		}
        break
}



