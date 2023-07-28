if other.cas_y = cas_y instance_destroy()

if other.cas_y == cas_y {
	if push other.x = other.x + lerp(1,0,0.1)

	if ds_list_find_index(col_ds,other.id) == -1 {
		other.i_xscale	   *= (1 + (damage_/other.health_)*.4)
		other.health_		   -= damage_
		ds_list_add(col_ds,other.id)
		instance_destroy()
	}
}