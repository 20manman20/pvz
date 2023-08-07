var hinput	= 1
var vinput	= 0
var spd_bol	= (hinput != 0) || (vinput != 0)

//var spd_dir	= point_direction(x,y,mouse_x,mouse_y)
var spd_dir	= point_direction(0,0,hinput,vinput)

hsp	= lengthdir_x(spd_bol,spd_dir)*.4
vsp	= lengthdir_y(spd_bol,spd_dir)

var _val	= CEL_W*CEL_W/2

var _x		= axis_x(x,y,45+360/VIEW_NUM*cam_index)
var _y		= axis_y(x,y,45+360/VIEW_NUM*cam_index,330)

drawx	= _x
drawy	= _y+z/2

/*
var _ind	= i*VIEW_NUM/_views
	var _x		= axis_x(x,y,45+360/VIEW_NUM*_ind)
	var _y		= axis_y(x,y,45+360/VIEW_NUM*_ind,330)
	
	coorx[| _ind]		= _x
	coory[| _ind]		= _y + z/2 - height_/2
	
	coordd[| _ind]		= -_y*20 - 100000 + z
*/

depth	= axis_dd(x,y,45+360/VIEW_NUM*cam_index)

if keyboard_check_pressed(vk_space) zsp	= -4

if !place_meeting_3d(x,y,z,o_par_iso) {
	zsp+=.3
}

repeat (round(abs(hsp)*10)) {
    if place_meeting_3d(x+sign(hsp),y,z,o_par_iso) {
		hsp	= 0
		zsp	= -1
		break
	} else x += sign(hsp)/10
}

repeat (round(abs(vsp)*10)) {
    if place_meeting_3d(x,y+sign(vsp),z,o_par_iso) {
		vsp	= 0
		zsp	= -1
		break
	} else y += sign(vsp)/10
}

repeat (round(abs(zsp)*2)) {
    if place_meeting_3d(x,y,z+sign(zsp),o_par_iso) {
		zsp	= 0
		break
	} else z += sign(zsp)/2
}