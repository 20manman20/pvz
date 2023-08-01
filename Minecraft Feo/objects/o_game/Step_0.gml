vecx	= lerp(vecx,lengthdir_x(1,angle_r),angle_spd)
vecy	= lerp(vecy,lengthdir_y(1,angle_r),angle_spd)

cam_angle	= point_direction(0,0,vecx,vecy)
cam_index	= round(round(cam_angle)/(360/VIEW_NUM) % VIEW_NUM)
