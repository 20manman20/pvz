event_inherited()

switch (state) {
	case 0:
		break
    case 1:
		sprite_i	= [	[s_patatapum_start, -1, 1],		//00
						[s_patatapum_start, -1, 1],		//45
						[s_patatapum_start, -1, 1],		//90
						[s_patatapum_start, -1, 1],		//135
						[s_patatapum_start, -1, 1],		//180
						[s_patatapum_start, -1, 1],		//225
						[s_patatapum_start, -1, 1],		//270
						[s_patatapum_start, -1, 1]]		//315
		
		if image_index >= (image_number - 1) {
			state	= 2
			image_index	= 0
		}
        break
    case 2:
		sprite_i	= [	[s_patatapum_01, -1, 1],		//00
						[s_patatapum_01, -1, 1],		//45
						[s_patatapum_03, -1, 1],		//90
						[s_patatapum_03, -1, 1],		//135
						[s_patatapum_00, -1, 1],		//180
						[s_patatapum_00, -1, 1],		//225
						[s_patatapum_02, -1, 1],		//270
						[s_patatapum_02, -1, 1]]		//315
        break
}