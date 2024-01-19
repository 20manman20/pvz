map_pos		= [	clamp(map_pos[XX],backyard_00[XX],backyard_11[XX]),
				clamp(map_pos[YY],backyard_00[YY],backyard_11[YY]),
				clamp(map_pos[ZZ],0,max_z_layer)]
/*			 
for (var i = max_z_layer-1; i >= 0; --i) {
	if map[i][# map_pos[XX], map_pos[YY]][2] == map_tp.bl {
		z				= -(i+1)*CEL_W
		map_pos[ZZ]		= i+1
		break
	}
	if i == 0 {
		z	= 0
		map_pos[ZZ]		= 0
	}
}
*/
if map[map_pos[ZZ]]
	[# map_pos[XX],   
		map_pos[YY]][2] != map_tp.pl {
		map[map_pos[ZZ]]
			[# map_pos[XX],   
				map_pos[YY]]		= [plant_id+50,id,1]
} else instance_destroy()


