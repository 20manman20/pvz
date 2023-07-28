while !(x < room_width) && instance_exists(o_game) {
	with target_destroy instance_destroy()
} 

hspeed_ = lerp(0,50,0.25)
x += hspeed_