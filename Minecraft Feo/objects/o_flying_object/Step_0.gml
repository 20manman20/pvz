event_inherited()

zspd+=grav

if jump > 0 {
	if (place_meeting_3d(x,y,z+8) != -1) || z >= -1 {
		jump--
		zspd	= -2
		hspd	*= .6
	}
} else {
	grav		= 0
	zspd		= 0
	hspd		= 0
	image_speed	= 0
}

if !(place_meeting_3d(x+hspd,y,z) != -1){
	x	+= hspd
}

if !(place_meeting_3d(x,y,z+1) != -1) {
	z	+= zspd
}

event_inherited()

#region Control de animaciones
i_angle	= (floor(cam_angle/45+.5)*45 - angle_z + 720) % 360

sprite_index	= sprite_i[object_id][i_angle div 45][0]
image_xscale	= sprite_i[object_id][i_angle div 45][2]