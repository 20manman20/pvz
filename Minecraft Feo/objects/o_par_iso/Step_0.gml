var _val	= CEL_W*CEL_W/2

var _x		= axis_x(x,y,45+360/VIEW_NUM*cam_index)
var _y		= axis_y(x,y,45+360/VIEW_NUM*cam_index,330)

drawx	= _x
drawy	= _y+z/2

depth	= axis_dd(x,y,45+360/VIEW_NUM*cam_index)