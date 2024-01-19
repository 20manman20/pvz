event_inherited()
c_val	= 0
if hp_ <= hp_max/4 {
	degrad		= 3
} else {
	if hp_ <= hp_max/2 {
		degrad		= 2
	} else {
		if hp_ <= 3*(hp_max/4) {
			degrad		= 1
		} else {
			degrad		= 0
		}
	}
}

if state	= z_st.death instance_destroy()