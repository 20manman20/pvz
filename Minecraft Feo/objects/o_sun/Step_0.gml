image_angle	= (image_angle + spin_dir*.8) % 360

switch (state) {
    case sun_st.jump:
        if angle < 180 {
			hspeed		= spin_dir*.2
			angle+=4
		} else {
			angle	= 180
			hspeed	= 0
		}
		yoff	-= lengthdir_x(2,angle)

		y	= ystart+clamp(yoff,-48,8)
        break
    case sun_st.fall:
		hspeed	= 0
        y+=.4
		
		if y > (o_game.cam_y + o_game.cam_h - 128) {
			image_alpha-=.02
			if image_alpha <= 0 {
				instance_destroy()
			}
		}
        break
	case sun_st.fly:
		hspeed	= 0
		image_alpha	= lerp(image_alpha,1,.4)
		
		x	= lerp(x,224+40,.1)
		y	= lerp(y,144+40,.1)
		
		if point_distance(x,y,224+40,144+40) < 4 {
			instance_destroy()
			sun_amount += 50
		}
		break
}