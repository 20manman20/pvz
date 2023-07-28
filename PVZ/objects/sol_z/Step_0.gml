hsp_   = 0.1
var x_	= room_width-60-14
var y_	= 18
if run = true {
	x = lerp(x,x_,0.05)
	y = lerp(y,y_,0.05)
	image_alpha	= lerp(image_alpha, distance_to_point(room_width-60-2,6)/distance,0.1)
} else {
	y = lerp(y,alphay,0.05)
}

if abs(x-x_) <= 3 {
	instance_destroy()
	global.soles_z+=value
}