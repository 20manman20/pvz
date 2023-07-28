event_inherited()

if damage_= 20 {
	image_index		= 0
	push			= false
} else if damage_	= 40 && !fire {
	image_index		= 1
	//push			= true
} else if damage_	= 80 && !fire {
	image_index		= 2
	push			= false
}

if can_ && fire {
	damage_*=plus
	can_ = false
}

if trpdr_ != 0 {
	vspeed = (y_to-y)/10
}