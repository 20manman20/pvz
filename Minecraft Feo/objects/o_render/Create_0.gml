globalvar map, blocks;
#macro	MIN_Z_LAYER	0
#macro	MAX_Z_LAYER	2

blocks	= [	o_grass,
			o_dirt,
			o_sidewalk,
			o_sidewalk_ladder,
			o_dirt]

map[0]	= ds_grid_create(MAP_W,MAP_H)
map[1]	= ds_grid_create(MAP_W,MAP_H)
map[2]	= ds_grid_create(MAP_W,MAP_H)

iso_construction("Tiles_0",0)
iso_construction("Tiles_1",1)
iso_construction("Tiles_2",2)
