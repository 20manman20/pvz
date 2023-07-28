randomize()

if new_turn {
	image_index	= 0
	switch (mode_index) {
		case 25:
			i			= choose(25)
		break
		case 75:
			i			= choose(75)
		break
		case 50:
			i			= choose(50)
		break
		case "Especial":
			i			= choose("Especial")
		break
		case "Start":
			i			= choose(50,75,50,75,50,25,25)
		break
		case "Game":
			i			= choose(50,75,50,75,50,25,25,"Especial")
		break
		case "Tutorial_0":
			i			= choose(25,50,50,50,75,75)
		break
		case "Tutorial_1":
			i			= choose(25,25,25,50,50,75)
		break
		
	}
	irest		= i
	image_speed = 1
	can			= true
}

switch i {
	case 50:
		sprite_index = s_dado_50
	break
	case 25:
		sprite_index = s_dado_25
	break
	case 75:
		sprite_index = s_dado_75
	break
	case "Especial":
		sprite_index = s_dado_spc
	break
}


if floor(image_index) = 36 && can {
	
	if i != "Especial" {
		var time_ = 1
	} else {
		time_ = 75
	}
	alarm[0] = time_
	can = false
	
}