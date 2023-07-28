vecx	= lerp(vecx,lengthdir_x(1,angle_r),.2)
vecy	= lerp(vecy,lengthdir_y(1,angle_r),.2)

cam_index	= round(round(point_direction(0,0,vecx,vecy))/(45/8) % 64)