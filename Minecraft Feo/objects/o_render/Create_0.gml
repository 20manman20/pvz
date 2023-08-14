globalvar col_layer, blocks;
#macro	MIN_Z_LAYER	0
#macro	MAX_Z_LAYER	1

blocks	= [	o_grass,
			o_dirt,
			o_sidewalk,
			o_sidewalk_ladder,
			o_dirt]

col_layer[0]	= ds_grid_create(MAP_W,MAP_H)
col_layer[1]	= ds_grid_create(MAP_W,MAP_H)
col_layer[2]	= ds_grid_create(MAP_W,MAP_H)

iso_construction("Tiles_0",0)
iso_construction("Tiles_1",1)
