/// @description Dibujar el rayo

event_inherited()
//draw_text(x,y-50,string(draw_))
//draw_text(x,y-30,string(sin(degtorad(point_direction(x,y,mouse_x,mouse_y)))))

#region Rayo normal

if !nutriente {
	
	if draw_ == true {
		if point_x[0] != 0 or point_y[0] != 0 {
			for (var a = 0; a <= constant_[0]; ++a) {
				var index = choose(0,1,2,3)
				draw_sprite_ext(s_jnc_light,index,x+(cos(degtorad(point_direction(x,y,point_x[0],point_y[0])))*light_w)*a,y-10-
				(((sin(degtorad(point_direction(x,y-10,point_x[0],point_y[0]))))*light_w))*a,
				1,1,point_direction(x,y-10,point_x[0],point_y[0]),image_blend,alpha_)
			}
			
		}
		
		if point_x[1] != 0 or point_y[1] != 0 {
			for (var a = 0; a <= constant_[1]; ++a) {
				var index = choose(0,1,2,3)
				draw_sprite_ext(s_jnc_light,index,x+(cos(degtorad(point_direction(x,y,point_x[1],point_y[1])))*light_w)*a,y-10-
				(((sin(degtorad(point_direction(x,y-10,point_x[1],point_y[1]))))*light_w))*a,
				1,0.6,point_direction(x,y-10,point_x[1],point_y[1]),image_blend,alpha_)
			}
			
		}
		
		if point_x[2] != 0 or point_y[2] != 0 {
			for (var a = 0; a <= constant_[2]; ++a) {
				var index = choose(0,1,2,3)
				draw_sprite_ext(s_jnc_light,index,x+(cos(degtorad(point_direction(x,y,point_x[2],point_y[2])))*light_w)*a,y-10-
				(((sin(degtorad(point_direction(x,y-10,point_x[2],point_y[2]))))*light_w))*a,
				1,0.6,point_direction(x,y-10,point_x[2],point_y[2]),image_blend,alpha_)
			}
			
		}
		
		if point_x[3] != 0 or point_y[3] != 0 {
			for (var a = 0; a <= constant_[3]; ++a) {
				var index = choose(0,1,2,3)
				draw_sprite_ext(s_jnc_light,index,x+(cos(degtorad(point_direction(x,y,point_x[3],point_y[3])))*light_w)*a,y-10-
				(((sin(degtorad(point_direction(x,y-10,point_x[3],point_y[3]))))*light_w))*a,
				1,0.3,point_direction(x,y-10,point_x[3],point_y[3]),image_blend,alpha_)
			}
			
		}
		
		if point_x[4] != 0 or point_y[4] != 0 {
			for (var a = 0; a <= constant_[4]; ++a) {
				var index = choose(0,1,2,3)
				draw_sprite_ext(s_jnc_light,index,x+(cos(degtorad(point_direction(x,y,point_x[4],point_y[4])))*light_w)*a,y-10-
				(((sin(degtorad(point_direction(x,y-10,point_x[4],point_y[4]))))*light_w))*a,
				1,0.3,point_direction(x,y-10,point_x[4],point_y[4]),image_blend,alpha_)
			}
			
		}
		
	}
	
}

#endregion

if draw_x {
	var xscale	= instance_number(jnc)/10
	for (var a = 0; a <= floor(((o_cntrl.bg_x+10.5*20)-x)/xscale); ++a) {
		var index = choose(0,1,2,3)
		draw_sprite_ext(s_jnc_light_x,index,x-3+(12*xscale)*a,y-10,xscale,xscale,0,image_blend,alpha_)
	}
	draw_x	= true 
}

draw_set_alpha(1)
//draw_text(x,y-20,"draw_x " + string(draw_x))