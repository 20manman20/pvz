enum TILE {
	SPRITE,
	Z
}


#macro MAP_W		120
#macro MAP_H		100

globalvar the_map, max_z_layer;

the_map	= ds_grid_create(MAP_W,MAP_H)
max_z_layer	= 7

for (var i = 0; i < max_z_layer; ++i) {
	var lay_string	= "Tiles_" + string(i)
	sc_iso_construction(lay_string,o_dirt,-i*16)
}
