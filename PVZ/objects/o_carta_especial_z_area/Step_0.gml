var collision_ = collision_rectangle(o_cntrl.bg_x,o_cntrl.bg_y,o_cntrl.bg_x+o_cntrl.cas_l*9,o_cntrl.bg_y+o_cntrl.cas_l*5,par_planta,false,true)

switch type {
	case 0:
		if instance_exists(collision_) {
			with par_planta {
				death_type	= "zombi"
				health_		-=50
			}
		}
	break
	case 3:		
		if (global.mazo + 3) > 6 global.mazo = 6
		else global.mazo+=3
		instance_destroy()
	break
}