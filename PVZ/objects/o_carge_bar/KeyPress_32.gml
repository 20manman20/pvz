if o_cntrl.can_next_turn {
	if global.game_state == "gameplay" {
		if charge == 0 or charge == 54 {
			if global.team_turn == "Zombi" {
				charge = 1
			} else {
				charge = 53
			}
			alarm[0]	= 10
		}
	}
}