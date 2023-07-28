/// @description Evento Horda
irest_horda-=1
var create_ = instance_create_depth(mouse_x,mouse_y,-100,sol_z)
create_.image_xscale = 1.5
create_.image_yscale = 1.5
create_.value		 = 100

if irest_horda > 0 {
	alarm[3] = 30
} else {
	with o_cntrl {
		for (var a = 0; a <= max_cartas[1]; ++a) {
			zombie[a,4]	= zombie[a,3]
		}
	}
}