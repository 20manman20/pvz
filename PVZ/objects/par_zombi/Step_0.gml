if health_ <= 0 {
	instance_destroy()
}

depth	= (abs(cas_y-5) * 100)-5

if new_turn {
	x -= hsp_max
}

var plant_	= collision_rectangle(bbox_left-2,bbox_top,bbox_right,bbox_bottom,par_planta,false,true) 

if new_turn && plant_ && plant_.eatable {
	plant_.health_	-= /*hsp_max*(100/8)*/ 100
	plant_.i_xscale	*= 1.1
	plant_.dmg_alpha = 1
}

if plant_ {
	hsp_max = 0
}

cas_x = floor(( x - o_cntrl.bg_x )/o_cntrl.cas_l)
cas_y = floor(( y - o_cntrl.bg_y )/o_cntrl.cas_l)

if dmg_alpha > 0 {
	dmg_alpha -= .1
}