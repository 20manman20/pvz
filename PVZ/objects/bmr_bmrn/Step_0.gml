event_inherited()

image_angle	+= 22.5

/*
if (sign(x_initial - x) != sign(init_hsp_)) && (sign(x_initial - x) != 0) {
	instance_destroy()
}
*/

if instance_place(x,y,id_) && -sign(hspeed) == sign(init_hsp_) {
	instance_destroy()
}

if sign(hspeed) != sign(init_hsp_) && reset_list {
	reset_list	= false
	ds_list_clear(col_ds)
}