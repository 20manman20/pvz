if bol_click {
	var me_col		=	bbox_left-2 <= mouse_x && bbox_right+2 >= mouse_x && bbox_bottom+2 >= mouse_y && bbox_top-2 <= mouse_y

	if me_col {
		if	summon != true && global.team_turn == "Zombi" && num_zombie == 0 && bol_click {
				summon			=	true
				bol_click		=	false
				alarm[0]		=	10
			}
	} 

	if	summon == true && bol_click && global.soles_z >= (zombie[i,1] - 25) {
		global.state	=	"poner"
		instance_create_depth(x,y,depth,zombie[i,0])
		global.soles_z-=(zombie[i,1]-25)
		summon	= false
		num_zombie++
	}
}