if other.state != z_st.death {
	instance_destroy()
	with other {
		if height_ <= 24 {
			damage_down	= 1
			hp_ -= other.damage
		} else {
			damage_up = 1
			hp_ -= other.damage*1.5
		}
		audio_play_sound(choose(snd_z_hit_00,snd_z_hit_01),1,0)
	}

	if instance_exists(cbg) {
		bol_zombie	= noone
	}
}