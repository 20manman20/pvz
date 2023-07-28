if c < 3 {
	repeat(2) {
		randomize()
		var x_1		= o_cntrl.bg_x + irandom_range(cas_x,8)*20
		var y_1		= o_cntrl.bg_y + irandom_range(0,4)*20
		if !collision_rectangle(x_1+1,y_1-1,x_1+18,y_1+18,par_planta,false,true) {
			var create = instance_create_depth(x_1+10,y_1+16,depth,ptp)
			if instance_exists(create) create.activated_		= true
			c++
		}
	}
	alarm[0] = 1
}