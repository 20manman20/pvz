irest-=1
var create_ = instance_create_depth(x,y+10,depth+1,sol_z)
create_.image_xscale = 1.5
create_.image_yscale = 1.5
create_.value		 = 75

if irest > 0 {
	alarm[1] = 30
} else {
	instance_destroy()
	with o_cntrl {
		for (var a = 0; a <= max_cartas[1]; ++a) {
			zombie[a,4]	= zombie[a,3]
		}
	}
}