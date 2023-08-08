event_inherited()

var hinput	= -1
var vinput	= 0
var spd_bol	= (hinput != 0) || (vinput != 0)

var spd_dir	= point_direction(0,0,hinput,vinput)

hsp	= lengthdir_x(spd_bol*spd_max,spd_dir)
vsp	= lengthdir_y(spd_bol*spd_max,spd_dir)

if !place_meeting_3d(x,y,z,o_par_block) {
	zsp+=.3
}
/*
repeat (round(abs(hsp)*10)) {
    if place_meeting_3d(x+sign(hsp),y,z,o_par_block) {
		hsp	= 0
		zsp	= -1
		break
	} else x += sign(hsp)/10
}

repeat (round(abs(vsp)*10)) {
    if place_meeting_3d(x,y+sign(vsp),z,o_par_block) {
		vsp	= 0
		zsp	= -1
		break
	} else y += sign(vsp)/10
}

repeat (round(abs(zsp)*2)) {
    if place_meeting_3d(x,y,z+sign(zsp),o_par_block) {
		zsp	= 0
		break
	} else if z >= 90 {
		zsp	= 0
		break
	} else z += sign(zsp)/2
}

if hp_ <= 0 {
	instance_destroy()
}