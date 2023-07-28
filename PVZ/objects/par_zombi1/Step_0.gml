if health_ <= 0 {
	instance_destroy()
}

depth	= (abs(cas_y-5) * 100)-5

if new_turn {
	image_speed = 1
	if freeze <= 0 {
		var plant_	= instance_place(x+sign(hsp_),y,par_planta)
		if !plant_ {
			x_to	=	x_to - hsp_max
		}
	} else freeze--
}

if !freeze {
	
	if round(x) != round(x_to) {
		hsp_	= sign(x_to-x)*hsp_max/8
	} else {
		hsp_	= 0
	}
	
}

var plant_	= collision_rectangle(bbox_left-2,bbox_top,bbox_right,bbox_bottom,par_planta,false,true) 

if new_turn && plant_ {
	plant_.health_	-= hsp_max*(100/8)
	plant_.i_xscale *= 1.1
	plant_.i_yscale *= 0.9
}

repeat(abs(hsp_)) {
	if instance_place(x+sign(hsp_),y,par_planta) {
		hsp_			= 0
		x_to			= x
		break
	} else x += (sign(hsp_))/15
}

cas_x = floor(( x - o_cntrl.bg_x )/o_cntrl.cas_l)
cas_y = floor(( y - o_cntrl.bg_y )/o_cntrl.cas_l)