event_inherited()
var area_	=	collision_rectangle(bbox_left-10,bbox_bottom,bbox_right+10,bbox_top,par_zombi,false,true)

if instance_exists(area_) && global.turno != turn_c { 
	area_.freeze		=	4
	area_.freeze_type	=	"ice"
	//i_xscale			=	1.2
	image_speed			=	1
}

if nutriente {
	var enemies_hit		=	ds_list_create()
	collision_rectangle_list(bbox_left-35,bbox_bottom+40,bbox_right+37,bbox_top-38,par_zombi,false,true,enemies_hit,false)
	for (var i = 0; i < ds_list_size(enemies_hit); i++){
		var enemy	=	ds_list_find_value(enemies_hit, i)
		enemy.freeze	=	4
	}
	ds_list_destroy(enemies_hit)
	nutriente	=	false
}