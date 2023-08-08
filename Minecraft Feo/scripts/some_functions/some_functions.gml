#macro	INSQRT2			(0.707)				//power(2,-.5)

enum TILE {
	SPRITE,
	Z
}

#macro	CENTER_X		(room_width/2*INSQRT2)		
#macro	CENTER_Y		(room_height/2*INSQRT2)

#macro	VIEW_NUM		240
#macro	CEL_W			24

#macro	MAP_W			40
#macro	MAP_H			24


//0.707 es seno de 45°

#macro	CAMERA_UP		(-cam_angle)

function iso_construction(layer_name, object, z_coor) {
	layer_set_visible(layer_name,false)

	var tile_map	= layer_tilemap_get_id(layer_name)

	for (var tx = 0; tx < MAP_W; ++tx) {
	    for (var ty = 0; ty < MAP_H; ++ty) {
			var tile_map_data		= tilemap_get(tile_map,tx,ty)
			var this_tile			= tile_map_data
			the_map[# tx, ty]		= this_tile
		
		}
	}

	var tile_data, tile_index, tile_z
	
	for (var tx	= 0; tx < MAP_W; tx++) {
		for (var ty	= 0; ty < MAP_H; ty++) {
			tile_data	= the_map[# tx, ty]
		
			if tile_data < 9 && tile_data > 0 {
				for (var i = 0; i < tile_data; ++i) {
					if i == (tile_data-1) {
						var tile_o		= instance_create_depth((tx+.5)*CEL_W,(ty+.5)*CEL_W,depth,o_grass)
					} else {
						var tile_o		= instance_create_depth((tx+.5)*CEL_W,(ty+.5)*CEL_W,depth,o_dirt)
					}
					tile_o.z		= -i*CEL_W
				}
			}
		}
	}
}

function place_meeting_3d(_x,_y,_z,_obj) {
	//var _height	= height

	var target_ds	= ds_list_create()
	var target_i	= instance_place_list(_x,_y,_obj,target_ds,0)

	var xymeeting	= 0

	if target_i > 0	{
		for (var i = 0; i < target_i; ++i) {
			if rectangle_in_rectangle(0,target_ds[| i].z,1,target_ds[| i].z-target_ds[| i].height_,
				0, _z-1,1,_z-height_) {
				xymeeting	= target_ds[| i]
				break
			} else {
			}
		}
	}

	ds_list_destroy(target_ds)
	return	xymeeting
}

#region		Coordenadas de Dibujo 3D
function axis_x(x_,y_,anglex) {
	var D	= point_distance(x_*INSQRT2,y_*INSQRT2,CENTER_X,CENTER_Y)
	var Ax	= darctan2(y_*INSQRT2-CENTER_Y,x_*INSQRT2-CENTER_X)
	return D*dcos(anglex+Ax)	+ room_width/2
}

function axis_z(z_,anglez) {
	return z_*lengthdir_y(1,90-anglez) + CENTER_Y
}

function axis_y(x_,y_,anglex,anglez) {
	var D	= point_distance(x_*INSQRT2,y_*INSQRT2,CENTER_X,CENTER_Y)
	var Ax	= darctan2(y_*INSQRT2-CENTER_Y,x_*INSQRT2-CENTER_X)
	return D*dsin(anglex+Ax)*lengthdir_y(1,anglez) + room_height/2
} 

function axis_dd(_x,_y,anglex) {
	var drawy		= axis_y(_x,_y,anglex,330)
	//drawy solapadas en el suelo
	//(- +)z se ve detrás o adelante al saltar
	return ((-drawy+400) + z/1.5)
}
#endregion

function lerp_angle(val1,val2, amount) {
	var angle_diff = angle_difference(val1,val2)

	val2 = val1-angle_diff

	return lerp(val1, val2, amount);
}

function fdrawy(anglei) {
	var _val	= CEL_W*CEL_W/2
	return (axis_y(x*power(_val,.5)/CEL_W,y*power(_val,.5)/CEL_W,45+360/VIEW_NUM*anglei,330) + z/2 - height_/2)
}