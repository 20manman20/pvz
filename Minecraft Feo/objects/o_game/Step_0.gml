if trans == 1 {
	trans_val_an	= clamp(trans_val_an+trans_spd,0,180);
	if trans_val_an	== 180 {
		trans_val_an	= 0;
		trans	= 0;
	}
}

trans_val	= dsin(trans_val_an);

if abs(round(trans_val*100)-100) < 3 {
	if room_exists(trans_room_to) room_goto(trans_room_to);
	else if trans_room_to == -1 {
		game_end()
	}
	trans_room_to	= -4
}
/*
if (room == rm_win || room == rm_lose || room == rm_menu) || game_state != gm_st.play || (dialogue_n[lvl_actual+1]) == 0 {
	bol_dialogue	= false
	dialogue_i		= 0
}

if bol_dialogue {
	if script_execute(dialogue[clamp(lvl_actual+1,0,3)][dialogue_i][1]) {
		if dialogue_i < (dialogue_n[lvl_actual+1]-1) {
			dialogue_i++
		} else {
			dialogue_i		= 0
			bol_dialogue	= false
		}
	}
}