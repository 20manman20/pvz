var create = instance_create_depth(100,100,depth,o_cntrl)
instance_create_depth(188,171,-10000,dado)
instance_create_depth(95,19,-10000,o_carge_bar)

with create {
	
	max_cartas[0]	= other.i_max_p
	max_cartas[1]	= other.i_max_z
	
	for (var p = 0; p <= other.i_max_p; p++) {
		create_array_pcart(p,other.carta_p[p])
	}
	
	for (var z_ = 0; z_ <= other.i_max_z; z_++) {
		create_array_zcart(z_,other.carta_z[z_])
	}
	
}
