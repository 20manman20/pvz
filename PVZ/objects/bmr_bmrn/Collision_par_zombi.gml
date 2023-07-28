if destroy && cas_y == other.cas_y {
	instance_destroy()
}

if !const_damage {
	if other.cas_y == cas_y {
		if push other.x = other.x + lerp(1,0,0.1)

		if ds_list_find_index(col_ds,other.id) == -1 {
			if ds_list_find_index(damage_list,other.id) != -1 {
				other.i_xscale	   *= (1 + (damage_/other.health_)*.4)
				other.health_		   -= damage_
				ds_list_add(col_ds,other.id)
				if destroy instance_destroy()
			}
		}
	}
} else {
	other.health_		   -= damage_
	other.i_xscale	   *= (1 + (damage_/other.health_)*.1)
}