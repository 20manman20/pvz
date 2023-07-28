vspeed+=9.8/room_speed
var angulo = point_direction(x,y,x+hspeed*2,y+vspeed*2);

image_angle = angulo;

if y >= (floor_y-4) && vspeed > 0 {
	var enemies_hit		=	ds_list_create()
	collision_rectangle_list(floor_x-27,floor_y-27,floor_x+27,floor_y+27,par_zombi,false,true,enemies_hit,false)
	for (var i = 0; i < ds_list_size(enemies_hit); i++){
		var enemy	=	ds_list_find_value(enemies_hit, i)
		enemy.health_		-=	25
		enemy.freeze		=	2
		enemy.freeze_type	=	"butter"
	}
	ds_list_destroy(enemies_hit)
	instance_destroy()
}