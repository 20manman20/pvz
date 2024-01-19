brain_amount		= 0
brain_amount_r		= brain_amount

seed_i			= -1
seeds_max  		= 3

for (var i = 0; i < seeds_max; ++i) {
	var _ind			= i
	seed[i,sd_zb.ind]	= _ind
	seed[i,sd_zb.cost]	= zombie[_ind,zb.cost]
	seed[i,sd_zb.load]	= zombie[_ind,zb.loadi]
	seed[i,sd_zb.y_]	= 0
	seed[i,sd_zb.ang]	= 0
}

mx	= 5
my	= 5
mz	= 0

level_state		= lvl_st.play

sh_texel_handle	= shader_get_uniform(sh_outline, "in_texel")

/*
var _tomb_i	= 0

for (var i = (mapw-1); i > 0; --i) {
	for (var j = 0; j < maph; ++j) {
		var _tomb	= instance_position((i+.5)*CEL_W,(j+.5)*CEL_W,o_tombstone_par)
		
		if _tomb {  
			if _tomb_i <= 0 {
				tombstone[_tomb_i]	= _tomb
				_tomb_i	= 1
			} else {
				if _tomb != tombstone[_tomb_i-1] {
					tombstone[_tomb_i]	= _tomb
					_tomb_i++
				}
			}
		}
	}
}
*/

tombstone_max	= instance_number(o_tombstone_par)
tombstone_n		= instance_number(o_tombstone_par)
tombstone_i		= irandom_range(0,tombstone_n)

//tombstone	= [id, carga]
var _sum	= 0
if tombstone_n > 0 {
	for (var i = 0; i < tombstone_n; ++i) { 
		var _tomb_i	= instance_find(o_tombstone_par,i)
		tombstone[i,0]			= _tomb_i
		tombstone[i,1]			= 0
		_tomb_i.tombstone_id	= i
		_sum	+= _tomb_i.hp_
	}
}

zombies_health_max	= _sum
zombies_health		= zombies_health_max
zombies_health_r	= zombies_health

alarm[0]		= first_brain_time*60

flags_n			= 0
flag_i			= 0
flag			= [0.6,0.15,-1]

flag_text_bol	= 0

bol_zombie_left	= false				//Saber si aún queda un zombi

//alarm[1]		= first_brain_time*60

//brain_fall_cad		= 18+first_brain_time

//alarm[0]		= 60*brain_fall_cad

//help			= alarm[0]

//alarm[2]		= first_brain_time*60 + 1

//=brain_cadence_acc	= 0.001
//time_alarm3		= 360
//alarm[3]		= 360


