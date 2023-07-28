switch (global.game_state) {
	
	case "gameplay": 
	
	if can_next_turn {
		#region Pasar de Turno
	
	if o_carge_bar.can_change { 
		new_turn		= true
		global.turno++
		i				= 0
		new_turn_type	= global.team_turn
		alarm[0]		= 1
		global.state	= "poner"
	}
	
	#endregion
	}
	
	break
	
}