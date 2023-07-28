/*
if global.team_turn = "Planta" {
	if charge < 54 {
		charge		+= 1 
		alarm[0]	= 10
	} else {
		//image_index = image_number - 1
	}
} else {*/
if global.team_turn == "Zombi" {
	if charge > 0 {
		charge		-= 1
		alarm[0]	= 1*(speed_/((keyboard_check(vk_space)*3.5)+1))
	}
} else {
	if charge < 54 {
		charge		+= 1
		alarm[0]	= 1*(speed_/((keyboard_check(vk_space)*3.5)+1))
	}
}