vecx			= lerp(vecx,lengthdir_x(1,cam_angle_r),angle_spd)
vecy			= lerp(vecy,lengthdir_y(1,cam_angle_r),angle_spd)

cam_angle		= point_direction(0,0,vecx,vecy) % 360
cam_index		= round(round(cam_angle)/(360/VIEW_NUM) % VIEW_NUM)

var	a_hinput	= mouse_wheel_down()-mouse_wheel_up()

cam_angle_r		= (cam_angle_r+cam_ang_change*a_hinput+360)%360

if point_in_rectangle(mouse_x,mouse_y,room_width/2-2.5*41,cam_h+cam_y-13-40,room_width/2+2.5*41,cam_h+cam_y-13) {
	seeds_i	= (mouse_x-room_width/2+41*2.5) div 41
} else seeds_i	= -1



	for (var i = 0; i < seeds_max; ++i) {
	    plant[i,4]	= lerp(plant[i,4],(i==seeds_i)*5,.5)
	}