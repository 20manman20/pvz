event_inherited()

if global.team_turn == "Planta" {
	if new_turn {
		image_index	=	1
		alarm[0]	=	200
	}
	if instance_exists(sol) {
		with sol {
			if creation_type == "Dado" {
				instance_change(sol_z,false)
			}
		}
	}
} else {
	image_index = 0
}