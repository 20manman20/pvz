var spd_bol	= mouse_check_button(mb_left)

//var spd_dir	= point_direction(x,y,mouse_x,mouse_y)
var spd_dir	= point_direction(drawx,drawy+z/2,mouse_x,mouse_y)

hsp	= 0
vsp	= 0

var _val	= CEL_W*CEL_W/2

drawx	= axis_x(x*power(_val,.5)/CEL_W,y*power(_val,.5)/CEL_W,45+360/VIEW_NUM*cam_index)
drawy	= axis_y(x*power(_val,.5)/CEL_W,y*power(_val,.5)/CEL_W,45+360/VIEW_NUM*cam_index,330)

dd		= -drawy - 100000

depth	= dd+z/2

if keyboard_check_pressed(vk_space) zsp	= -4

if !place_meeting_3d(x,y,z,o_dirt) {
	zsp+=.3
}

repeat (round(abs(hsp)*10)) {
    if place_meeting_3d(x+sign(hsp),y,z,o_dirt) {
		hsp	= 0
		zsp	= -2
		break
	} else x += sign(hsp)/10
}

repeat (round(abs(vsp)*10)) {
    if place_meeting_3d(x,y+sign(vsp),z,o_dirt) {
		vsp	= 0
		zsp	= -2
		break
	} else y += sign(vsp)/10
}

repeat (round(abs(zsp)*2)) {
    if place_meeting_3d(x,y,z+sign(zsp),o_dirt) {
		zsp	= 0
		break
	} else z += sign(zsp)/2
}