function draw_building(s_index) {
	side	= [[1,1,-1,1],
				[1,-1,1,1],
				[-1,-1,1,-1],
				[-1,1,-1,-1]]

	length	= sprite_width/2

	var quad	= cam_angle div 90

	switch (quad) {
	    case 0:
			val0	= 3
			val1	= 0
	        break
	    case 1:
			val0	= 2
			val1	= 3
	        break
		case 2:
			val0	= 1
			val1	= 2
			break
		case 3:
			val0	= 0
			val1	= 1
			break
	}

	draw_sprite_pos(s_index,val0,	
							x+length*side[val0,2]+lengthdir_x(length*cam_angle_z*2,-cam_angle+90),
							y+length*side[val0,3]+lengthdir_y(length*cam_angle_z*2,-cam_angle+90),
							x+length*side[val0,0]+lengthdir_x(length*cam_angle_z*2,-cam_angle+90),
							y+length*side[val0,1]+lengthdir_y(length*cam_angle_z*2,-cam_angle+90),
							x+length*side[val0,0],y+length*side[val0,1],x+length*side[val0,2],y+length*side[val0,3],1)
	
	draw_sprite_pos(s_index,val1,	
							x+length*side[val1,2]+lengthdir_x(length*cam_angle_z*2,-cam_angle+90),
							y+length*side[val1,3]+lengthdir_y(length*cam_angle_z*2,-cam_angle+90),
							x+length*side[val1,0]+lengthdir_x(length*cam_angle_z*2,-cam_angle+90),
							y+length*side[val1,1]+lengthdir_y(length*cam_angle_z*2,-cam_angle+90),
							x+length*side[val1,0],y+length*side[val1,1],x+length*side[val1,2],y+length*side[val1,3],1)
	
}
