event_inherited()

for (var i = 0; i < 8; ++i) {
	sprite_i[i]	= [sprite_index,0,1]
}

damage_fx	= 0

enum z_st {
	entry,
	idle,
	walk,
	atk,
	stomp,
	tobasic,
	death
}

state			= z_st.idle

damage_up		= 0
damage_down		= 0

plant_atk		= noone
hitbox_atk		= noone

plant_stomp		= noone
hitbox_stomp	= noone

drawdd			= 0

_angle			= 0

sh_texel_handle	= shader_get_uniform(sh_outline, "in_texel")

selected		= false

c_hue			= 0
c_sat			= 0
c_val			= 0

/*
with o_zombies_controller {
	zombies_health	= clamp(zombies_health+other.hp_max,0,zombies_health_max)
}
