#macro	CENTER_X		(room_width/2*power(128,.5)/16)
#macro	CENTER_Y		(room_height/2*power(128,.5)/16)

#macro	CAMERA_UP		(-cam_angle+45)

function sc_iso_construction(layer_name, object, z_coor) {
	layer_set_visible(layer_name,false)

	var tile_map	= layer_tilemap_get_id(layer_name)

	for (var tx = 0; tx < MAP_W; ++tx) {
	    for (var ty = 0; ty < MAP_H; ++ty) {
			var tile_map_data		= tilemap_get(tile_map,tx,ty)
			//formato [Sprite, Z]
			var this_tile			= [-1,0]
			this_tile[TILE.SPRITE]	= tile_map_data
			this_tile[TILE.Z]		= irandom_range(-2,2)
			the_map[# tx, ty]		= this_tile
		
		}
	}

	var tile_data, tile_index, tile_z
	
	for (var tx	= 0; tx < MAP_W; tx++) {
		for (var ty	= 0; ty < MAP_H; ty++) {
			tile_data	= the_map[# tx, ty]

			tile_index	= tile_data[TILE.SPRITE] 
			tile_z		= tile_data[TILE.Z]
		
			if tile_index < 9 && tile_index > 0 {
				if tile_index == 1 var tile_o	= instance_create_depth(tx*CEL_W,ty*CEL_W,depth,o_dirt)
				else var tile_o	= instance_create_depth(tx*CEL_W,ty*CEL_W,depth,o_dirt)
				tile_o.z	= z_coor
				with tile_o {
					event_user(0)
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
			if rectangle_in_rectangle(0,target_ds[| i].z,1,target_ds[| i].z-CEL_W,
				0, _z-1,1,_z-CEL_W) {
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
	var D	= point_distance(x_,y_,CENTER_X,CENTER_Y)
	var Ax	= darctan2(y_-CENTER_Y,x_-CENTER_X)
	return D*dcos(anglex+Ax)	+ room_width/2
}

function axis_z(z_,anglez) {
	return z_*lengthdir_y(1,90-anglez) + CENTER_Y
}

function axis_y(x_,y_,anglex,anglez) {
	var D	= point_distance(x_,y_,CENTER_X,CENTER_Y)
	var Ax	= darctan2(y_-CENTER_Y,x_-CENTER_X)
	return D*dsin(anglex+Ax)*lengthdir_y(1,anglez) + room_height/2
} 

#endregion

function lerp_angle(val1,val2, amount) {
	var angle_diff = angle_difference(val1,val2)

	val2 = val1-angle_diff

	return lerp(val1, val2, amount);
}
