event_inherited()

var x_			= (o_cntrl.bg_x+(cas_x*o_cntrl.cas_l))
var y_			= (o_cntrl.bg_y+(cas_y*o_cntrl.cas_l))

area = collision_rectangle( x_-30, y_,x+38, y_+o_cntrl.cas_l-1, par_zombi,false,true)

if !nutriente {
	
	if instance_exists(area) {
	
		distance				= area.x - x
		if new_turn {
			image_index			= 0
			sprite_index		= s_bnk_ch
			timeline_index		= tml_bnk_ch
			timeline_position	= 0
			timeline_running	= true
			timeline_speed		= 1
		}
	
		if sign(distance) != 0 {
			dir_x = sign(distance)
		}

	} else {
		timeline_speed			= 0
		timeline_position		= 0
	} 
} 

if nutriente {
	
	if can_create {
		var area1 = instance_create_depth(x,y-5,depth+1,o_bnk_ch_x)	
		area1.image_xscale = 1
		area1.image_yscale = 3
		var area2 = instance_create_depth(x,y-5,depth+1,o_bnk_ch_x)	
		area2.image_xscale = 3
		area2.image_yscale = 1
		var area3 = instance_create_depth(x,y-5,depth+1,o_bnk_ch_x)	
		area3.image_xscale = 3
		area3.image_yscale = 3
		can_create = false
	}
	
	image_speed		= 1
	
	sprite_index	= s_bnk_ch_x 
	
	nutriente		= false
	
}
