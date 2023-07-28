event_inherited()

if new_turn {
	i++
}

if i >= 8 {
	activated_	= true
}

if activated_	= true {
	image_speed	= 1
	if floor(image_index) = image_number-1 {
		image_speed		= 0
	}
}

while activated_ && can {
	var create = instance_create_depth(x,y-6,depth-1,explode) 
	create.image_xscale = 2
	create.damage_		= 2000
	create.creator		= id
	can = false
}

if nutriente {
	image_speed		= 1
	c				= 1
	randomize()
	activated_		= true
	sprite_index	= s_ptp_x 
	alarm[0]		= 40
	nutriente = false
}