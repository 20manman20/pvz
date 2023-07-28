if destroy && cas_y == other.cas_y {
	instance_destroy()
}

if !const_damage {
	if other.cas_y == cas_y {
		if push other.x = other.x + lerp(1,0,0.1)

		if ds_list_find_index(col_ds,other.id) == -1 {
			if ds_list_find_index(damage_list,other.id) != -1 {
				num_z++
				other.i_xscale	   *= (1 + (damage_/other.health_)*.4)
				other.health_		   -= damage_
				other.dmg_alpha = 1
				var anima = instance_create_depth(other.x,y,depth-100,o_animated)
				anima.sprite_index	= s_dmg_fx_0
				anima.image_blend	= c_red
				anima.image_xscale	= sign(hspeed)
				ds_list_add(col_ds,other.id)
				if destroy instance_destroy()
			}
		}
	}
} else {
	other.health_		   -= damage_
	other.i_xscale	   *= (1 + (damage_/other.health_)*.1)
}