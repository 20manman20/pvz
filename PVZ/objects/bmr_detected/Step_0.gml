repeat(hspeed) {
	
	var col_zombi	= instance_place(x_step,y,par_zombi)
	
	if col_zombi {
	
		if ds_list_size(detect_list) < 4 {
			if instance_exists(id_) id_.point	= col_zombi.id 
		}

		if ds_list_size(detect_list) < 3 {
			if ds_list_find_index(detect_list,col_zombi.id) == -1 {
				ds_list_add(detect_list,col_zombi.id)
				if instance_exists(id_) ds_list_add(id_.bmr_list,col_zombi.id)
			}
		} else {	
			if instance_exists(id_) {
				ds_list_add(id_.bmr_list,col_zombi.id)
			}
			hspeed = 0
			instance_destroy()
		}
	
	}
	
	x_step++
	
	
}

if col_zombi {
	
	if ds_list_size(detect_list) < 4 {
		if instance_exists(id_) id_.point	= col_zombi.id 
	}

	if ds_list_size(detect_list) < 3 {
		if ds_list_find_index(detect_list,col_zombi.id) == -1 {
			ds_list_add(detect_list,col_zombi.id)
			if instance_exists(id_) ds_list_add(id_.bmr_list,col_zombi.id)
		}
	} else {	
		if instance_exists(id_) {
			ds_list_add(id_.bmr_list,col_zombi.id)
		}
		hspeed = 0
		instance_destroy()
	}
	
}