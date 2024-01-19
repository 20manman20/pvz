var _i	= change_seed_i()

//Aproximar soles 
brain_amount_r		= approach(brain_amount_r,brain_amount,3)
zombies_health_r	= lerp(zombies_health_r,zombies_health,.1)

//Estado
if game_side == 1 {
switch (level_state) {
	case lvl_st.play:
		if mouse_check_button_pressed(mb_left) {
			if _i != -1 {
				seed_i		= _i
				tombstone_i	= 0
				level_state	= lvl_st.put
			}
		}
        break
	case lvl_st.put:
		/*
		tombstone_i		= (tombstone_i - P_INPUT_WS + tombstone_n*3) % tombstone_n
		
		if mouse_check_button_pressed(mb_left) {
			var _cost	= zombie[seed[seed_i,sd_zb.ind],zb.cost]
			
			if seed_i != -1 {
				if  _cost <= brain_amount && (seed[seed_i,sd_zb.load] >= (zombie[seed[seed_i,sd_zb.ind],zb.load]-.1)) {
				}
			}
		}
		
		if keyboard_check_pressed(vk_escape) {
			level_state				= lvl_st.play
			seed_i					= -1
			tombstone_i				= -1
		}
		
		*/
        break
}
}

var _sum	= 0

if tombstone_n > 0 {
	for (var i = 0; i < tombstone_max; ++i) { 
		if instance_exists(tombstone[i,0])	{
			tombstone[i,1]	= approach(tombstone[i,1],0,1/60)
			_sum			+= tombstone[i,0].hp_
		}
	}
}

// var _extra	= bol_zombie_left && (zombies_health/zombies_health_max < .1)
//(zombies_health/zombies_health_max < .2) &&  (instance_number(o_par_zombie) > instance_number(o_tombstone_par))
zombies_health		= clamp(_sum,(instance_number(o_par_zombie) > 0)*50,zombies_health_max)

if zombies_health/zombies_health_max < flag[flag_i] && flag_i < (flags_n) {
	brain_amount	+= (tombstone_max+flag_i)*100
	flag_text_bol	= 1
	alarm[3]		= 60*2
	flag_i++
}

//brain_fall_cad	= clamp(brain_fall_cad-brain_cadence_acc/100,2,60)
//time_alarm3-=.06