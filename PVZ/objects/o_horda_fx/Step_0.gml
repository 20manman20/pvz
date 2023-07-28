hsp_   = 0.1
var x_	= room_width-40
var y_	= room_height-30

x = lerp(x,x_,0.05)
y = lerp(y,y_,0.05)
image_alpha		= lerp(image_alpha,(distance_to_point(x_,y_)*2.5)/distance,0.1)
image_xscale	= lerp(image_xscale,(distance_to_point(x_,y_)*2.5)/distance,0.1)
image_yscale = image_xscale

if abs(x-x_) <= 3 {
	global.horda+=1
	instance_destroy()
}

