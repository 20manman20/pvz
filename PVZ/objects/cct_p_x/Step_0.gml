event_inherited()

if instance_place(x,y,id_) && -sign(hspeed) == sign(init_hsp_) {
	instance_destroy()
}

if sign(hspeed) != sign(init_hsp_) && reset_list {
	reset_list	= false
	ds_list_clear(col_ds)
}