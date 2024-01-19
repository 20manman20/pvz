globalvar map, blocks, max_z_layer;

enum map_tp	{
	nn	= -1,
	bl	= 0,
	pl	= 1,
	sbl	= 2
}

#macro	MIN_Z_LAYER	0

blocks	= [	o_grass,
			o_dirt,
			o_sidewalk,
			o_sidewalk_ladder,
			o_dirt,
			o_hole,
			o_turn,
			o_bush]

for (var i = 0; i < 10; ++i) {
	var _name	= "Tiles_" + string(i)
	var _layer	= layer_get_id(_name)
	if layer_exists(_layer) {
		max_z_layer		= i
		map[i]			= ds_grid_create(mapw,maph)
		iso_construction(_layer,i)
	} else break
}

/*
map[0]	= ds_grid_create(mapw,maph)
map[1]	= ds_grid_create(mapw,maph)
map[2]	= ds_grid_create(mapw,maph)

iso_construction("Tiles_0",0)
iso_construction("Tiles_1",1)
iso_construction("Tiles_2",2)