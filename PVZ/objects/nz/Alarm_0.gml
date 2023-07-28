if sprite_index = s_nz_idle_02 {
	sprite_index	= choose(s_nz_idle_01,s_nz_idle_00,s_nz_idle_02,s_nz_idle_02,s_nz_idle_02,s_nz_idle_02)
	alarm[0]		= random_range(room_speed*6,room_speed*10)
}