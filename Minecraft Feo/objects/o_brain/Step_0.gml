image_angle	= (image_angle + spin_dir*.8) % 360

switch (state) {
    case br_st.jump:
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
    case br_st.fall:
		hspeed	= 0
        y+=.4
		
		if y > (cam_y + cam_h - 128) {
			image_alpha-=.02
			if image_alpha <= 0 {
				instance_destroy()
			}
		}
        break
	case br_st.fly:
		hspeed	= 0
		image_alpha	= lerp(image_alpha,1,.4)
		
		x	= lerp(x,224+40,.1)
		y	= lerp(y,144+40,.1)
		
		if point_distance(x,y,224+40,144+40) < 4 {
			instance_destroy()
			brain_amount += 50
		}
		break
}