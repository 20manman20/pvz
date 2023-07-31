 
 t1function collision_zombi_on_line() {
	var x_			= (o_cntrl.bg_x+(cas_x*o_cntrl.cas_l))
	var y_			= (o_cntrl.bg_y+(cas_y*o_cntrl.cas_l))

	return collision_rectangle(  x_+o_cntrl.cas_l, y_,o_cntrl.bg_x+(13*o_cntrl.cas_l), y_+o_cntrl.cas_l-1, par_zombi,false,true)







}
