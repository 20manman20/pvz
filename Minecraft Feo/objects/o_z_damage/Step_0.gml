damage_c	= approach(damage_c,0,1)
if damage_c	== 0 {
	damage_c	= time_damage
}
if !instance_exists(myzombie) instance_destroy()