event_inherited()

var x_			= (o_cntrl.bg_x+(cas_x*o_cntrl.cas_l))
var y_			= (o_cntrl.bg_y+(cas_y*o_cntrl.cas_l))

var area_0 = collision_rectangle(x_+o_cntrl.cas_l, y_,o_cntrl.bg_x+(10*o_cntrl.cas_l), y_+o_cntrl.cas_l-1, par_zombi,false,true) 
var area_1 = collision_rectangle(x_+o_cntrl.cas_l, y_-18-4,o_cntrl.bg_x+(10*o_cntrl.cas_l), y_+o_cntrl.cas_l-1-18-4, par_zombi,false,true) 
var area_2 = collision_rectangle(x_+o_cntrl.cas_l, y_+18-4,o_cntrl.bg_x+(10*o_cntrl.cas_l), y_+o_cntrl.cas_l-1+18-4, par_zombi,false,true) 
var area_3 = collision_rectangle(x_+o_cntrl.cas_l, y_-36-4,o_cntrl.bg_x+(10*o_cntrl.cas_l), y_+o_cntrl.cas_l-1-36-4, par_zombi,false,true) 
var area_4 = collision_rectangle(x_+o_cntrl.cas_l, y_+36-4,o_cntrl.bg_x+(10*o_cntrl.cas_l), y_+o_cntrl.cas_l-1+36-4, par_zombi,false,true) 

#region Ataque normal

if !nutriente {
	

	if new_turn {
	
		if instance_exists(area_0) {
				i_xscale	*= 1.05
				i_yscale	*= 0.95
				point_x[0]		= area_0.x
				point_y[0]		= area_0.y-10
	
				constant_[0]	= floor(distance_to_point(point_x[0],point_y[0])/light_w) 
			
				area_0.health_-=10
		} else {
			point_x[0]	= 0
			point_y[0]	= 0
		}
	
		if instance_exists(area_1) {
				i_xscale	*= 1.05
				i_yscale	*= 0.95
				point_x[1]		= area_1.x
				point_y[1]		= area_1.y-10
	
				constant_[1]	= floor(distance_to_point(point_x[1],point_y[1])/light_w) 
			
				area_1.health_-=8
		} else {
			point_x[1]	= 0
			point_y[1]	= 0
		}
	
		if instance_exists(area_2) {
				i_xscale	*= 1.05
				i_yscale	*= 0.95
				point_x[2]		= area_2.x
				point_y[2]		= area_2.y-10
	
				constant_[2]	= floor(distance_to_point(point_x[2],point_y[2])/light_w) 
			
				area_2.health_-=8
		} else {
			point_x[2]	= 0	
			point_y[2]	= 0
		}
	
		if instance_exists(area_3) {
				i_xscale	*= 1.05
				i_yscale	*= 0.95
				point_x[3]		= area_3.x
				point_y[3]		= area_3.y-10
	
				constant_[3]	= floor(distance_to_point(point_x[3],point_y[3])/light_w) 
			
				area_3.health_-=6
		} else {
			point_x[3]	= 0
			point_y[3]	= 0
		}
	
		if instance_exists(area_4) {
				i_xscale	*= 1.05
				i_yscale	*= 0.95
				point_x[4]		= area_4.x
				point_y[4]		= area_4.y-10
	
				constant_[4]	= floor(distance_to_point(point_x[4],point_y[4])/light_w) 
			
				area_4.health_-=6
		} else {
			point_x[4]	= 0
			point_y[4]	= 0
			
		}
			
		alpha_		= 1
		draw_		= true
		alarm[0]	= 1
			
	}
	
} 

#endregion 

#region

if nutriente {
	
	with par_zombi {
		if cas_y == other.cas_y {
			var n	= instance_number(jnc)*30
			scr_damage(n,"electric")
		}
	}
	
	alpha_		= 1
	with jnc {
		image_speed = 1
		sprite_index = s_jnc_x
	}
	draw_x		= true
	nutriente	= false
	//alarm[1]	= 12
	alarm[0]	= 1
	
	
}

#endregion