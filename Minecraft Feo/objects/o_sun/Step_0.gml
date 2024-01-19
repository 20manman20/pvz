switch (state) {
    case sun_st.jump:
	drawx	= x+lengthdir_x(-z/24*32,CAMERA_UP)
	drawy	= y+lengthdir_y(-z/24*32,CAMERA_UP)
	
	 if angle < 180 {
		angle+=4
	} else {
		angle	= 180
	}
	zoff	-= lengthdir_x(2.5,angle)
	z		=  zstart+clamp(zoff,-48,0)
	
	/*
		drawx	= x+lengthdir_x(-z/24*32,CAMERA_UP)
		drawy	= y+lengthdir_y(-z/24*32,CAMERA_UP)
        if angle < 180 {
			angle+=4
		} else {
			angle	= 180
		}
		zoff	-= lengthdir_x(2.5,angle)
		z	= zstart+clamp(zoff,-48,0)
		
		x	= xstart+lengthdir_x(-z/24*32,CAMERA_UP)
		y	= ystart+lengthdir_y(-z/24*32,CAMERA_UP)
		
		if game_side {
			if angle == 180 image_alpha	= lerp(image_alpha,0,.05)
			
			if image_alpha <= 0.1 {
				instance_destroy()
			}
		}
		*/
		break
    case sun_st.fall:
		drawx	= x+lengthdir_x(-z/24*32,CAMERA_UP)
		drawy	= y+lengthdir_y(-z/24*32,CAMERA_UP)
		
		if (place_meeting_3d(xstart,ystart,z+8) != -1 || z >= -8) {
			zspd = 0
		} else zspd	= .8
		
		z	+= zspd
		
		/*
		if z > 45 {
			image_alpha-=.02
			if image_alpha <= 0 {
				instance_destroy()
			}
		}
		*/
		
		
		
        break
	case sun_st.fly:
		image_alpha	= lerp(image_alpha,1,.4)
		var _x	= corner_x+lengthdir_x(32*window_scale,cam_angle+darctan2(1,.5))
		var _y	= corner_y-lengthdir_y(32*window_scale,cam_angle+darctan2(1,.5))
		
		drawx	= lerp(drawx,_x,.1)
		drawy	= lerp(drawy,_y,.1)
		
		if point_distance(drawx,drawy,_x,_y) < 8 {
			instance_destroy()
		}

		break
}

if point_distance(distance_x(drawx,drawy),distance_y(drawx,drawy)+16,window_mouse_get_x()/window_scale,window_mouse_get_y()/window_scale) < 9 {
	instance_destroy()
	sun_amount+=50
}