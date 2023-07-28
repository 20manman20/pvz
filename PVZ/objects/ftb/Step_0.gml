event_inherited()

var col_	=	collision_rectangle(bbox_left,bbox_bottom,bbox_left-5,bbox_bottom-9,par_planta,false,true)

if instance_exists(col_) {
	if can_damage {
		with col_ health_-=500
		can_damage = false
	}
	run = false
}

if run {
	image_index = 1
	speed_		= 7.5
} else {
	image_index = 0
	speed_ = 2.5
}



/*
if instance_exists(col_) {
	col_.health_   -= 200
	speed_			= 3
}