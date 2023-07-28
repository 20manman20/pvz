event_inherited()

cas_x = (( x - o_cntrl.bg_x )/o_cntrl.cas_l)
cas_y = (( y - o_cntrl.bg_y )/o_cntrl.cas_l)

var x_			= (o_cntrl.bg_x+(cas_x*o_cntrl.cas_l))
var y_			= (o_cntrl.bg_y+(cas_y*o_cntrl.cas_l))

var area = collision_rectangle(x_-o_cntrl.cas_l+10, y_-10, x_, y_+o_cntrl.cas_l-21, rtn,false,true)

if instance_exists(area) {
	image_index = 2
	mask_index = s_mask
}