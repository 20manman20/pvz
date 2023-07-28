var x_	= 84
var y_	= 15
if run = true {
	hspeed	=	0
	vspeed	=	0
	x = lerp(x,x_,0.05)
	y = lerp(y,y_,0.05)
	//image_alpha	= lerp(image_alpha,distance_to_point(60,4)/distance,0.1)
} else {
	y = lerp(y,alphay,0.05)
}

if abs(x-x_) <= 3 {
	global.soles+=value
	instance_destroy()
}
image_angle -= 1