if in_range(z,other.z-other.height_,other.z) && other.state != z_st.death  {
	instance_destroy()
	with other {
		damage_fx	= 1
		audio_play_sound(choose(snd_z_hit_00,snd_z_hit_01),1,0)
		
		if other.z	< (z-32) {
			damage_up	= 1
			hp_ -= other.damage*1.5
		} else {
			damage_down	= 1
			hp_ -= other.damage
		}
		
		
	}

	if instance_exists(peashooter) {
		bol_zombie	= noone
	}
}