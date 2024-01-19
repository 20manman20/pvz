function distance_x(x1,y1) {
	var x0,y0,v0x,v0y,v1x,v1y
	
	x0	= corner_x
	y0	= corner_y
	v0x	= lengthdir_x(1,cam_angle-90)
	v0y	= lengthdir_y(1,cam_angle-90)
	
	v1x	= lengthdir_x(1,cam_angle)
	v1y	= lengthdir_y(1,cam_angle)

	var k=(y1+v1y*x0/v1x-v1y*x1/v1x-y0)/(v0y-v1y*v0x/v1x)

	if is_nan(k) k = (x1-x0)*dcos(cam_angle)
	return point_distance(x0,y0,x0+v0x*k,y0+v0y*k)
}

function distance_y(x1,y1) {
	var x0,y0,v0x,v0y,v1x,v1y
	
	x0	= corner_x
	y0	= corner_y
	v0x	= lengthdir_x(1,cam_angle)
	v0y	= lengthdir_y(1,cam_angle)
	
	v1x	= lengthdir_x(1,cam_angle-90)
	v1y	= lengthdir_y(1,cam_angle-90)

	var k=(y1+v1y*x0/v1x-v1y*x1/v1x-y0)/(v0y-v1y*v0x/v1x)

	if is_nan(k) k = (x1-x0)*dcos(cam_angle)
	return point_distance(x0,y0,x0+v0x*k,y0+v0y*k)/2
}
