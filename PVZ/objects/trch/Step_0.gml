event_inherited()
var col_ = collision_rectangle(x+6,y-6,x-6,y-12,lzg_g,false,true)

if nutriente {
	plus = 4
	image_index = 1
} else {
	plus = 2
	image_index	= 0
}

if instance_exists(col_) {
	depth		= col_.depth+1
	col_.plus	= plus
	with col_ {
		fire	= true
	}
}