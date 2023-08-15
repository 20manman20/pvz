

if in_range(z,other.z-other.height_,other.z) {
	instance_destroy()
	with other {
		damage_cooldown	= 1
		hp_ -= other.damage
		audio_play_sound(choose(snd_z_hit_00,snd_z_hit_01),1,0)
	}

	with o_peashooter	bol_zombie	= 0
}