if can_damage {
	var enemies_hit		=	ds_list_create()
	collision_rectangle_list(bbox_left-5,bbox_bottom-5,bbox_right+5,bbox_top-5,par_zombi,false,true,enemies_hit,false)
	for (var i = 0; i < ds_list_size(enemies_hit); i++){
		var enemy		=	ds_list_find_value(enemies_hit, i)
		enemy.health_	-=	500
	}
	ds_list_destroy(enemies_hit)
	instance_destroy()
}

can_damage = false


if destroy {
	instance_destroy()
}
