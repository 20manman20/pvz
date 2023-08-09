vecx			= lerp(vecx,lengthdir_x(1,cam_angle_r),angle_spd)
vecy			= lerp(vecy,lengthdir_y(1,cam_angle_r),angle_spd)

cam_angle		= point_direction(0,0,vecx,vecy) % 360
cam_index		= round(round(cam_angle)/(360/VIEW_NUM) % VIEW_NUM)

var	a_hinput	= keyboard_check_pressed(ord("A")) - keyboard_check_pressed(ord("D"))

cam_angle_r			= (cam_angle_r+cam_ang_change*a_hinput+360)%360
