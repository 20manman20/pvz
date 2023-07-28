if health_ <= 0 {
	instance_destroy()
}

if summon			=	true {
	
	image_index			= i+1
				
	var up		=	keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_left)
				or keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("A"))
			
	var down	=	keyboard_check_pressed(vk_down) or keyboard_check_pressed(vk_right)
				or keyboard_check_pressed(ord("S")) or keyboard_check_pressed(ord("D"))

	if up {
		if i > 0 i-- 
		else i = 2
	}

	if down {
		if i < 2 i++
		else i = 0
	}
	
	
	
} else {
	image_index			= 0
}

if new_turn {
	num_zombie	= 0
}

if summon {
	global.state	=	"cart_effect"
}

if keyboard_check_pressed(vk_escape) {
	global.state	=	"poner"
	summon	= false
}