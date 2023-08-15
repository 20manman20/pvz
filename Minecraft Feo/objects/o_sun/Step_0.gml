image_angle	= (image_angle + spin_dir*.8) % 360

if !state {
	if angle < 180 {
		angle+=4
	} else {
		angle	= 180
		hspeed	= 0
	}
	yoff	-= lengthdir_x(2,angle)

	y	= ystart+clamp(yoff,-48,8)
} else {
	x	= lerp(x,224+40,.1)
	y	= lerp(y,144+40,.1)
	
	if point_distance(x,y,224+40,144+40) < 4 {
		instance_destroy()
		sun_amount += 50
	}
}
