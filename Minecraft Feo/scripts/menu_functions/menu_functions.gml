function jugar() {
	room_trans(rm_03)
	game_state	= gm_st.play
}

function salir() {
	room_trans(-1)
}

function siguiente() {
	if lvl_actual	< (num_levels-1) {
		room_trans(lvl_room[lvl_actual+1])
		game_state	= gm_st.play
	} else {
		room_trans(-1)
	}
}