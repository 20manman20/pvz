globalvar col_layer;
#macro	CEL_W	24
#macro	MAP_W	(room_width/CEL_W)
#macro	MAP_H	(room_height/CEL_W)

#macro	MIN_Z_LAYER	0
#macro	MAX_Z_LAYER	2

col_layer[0]	= ds_grid_create(MAP_W,MAP_H)
col_layer[1]	= ds_grid_create(MAP_W,MAP_H)
col_layer[2]	= ds_grid_create(MAP_W,MAP_H)

tilemap_to_grid("Tiles_1",col_layer[0])
tilemap_to_grid("Tiles_2",col_layer[1])
tilemap_to_grid("Tiles_3",col_layer[2])