if instance_exists(cbg) {
	cbg.bol_zombie			= bol_zombie
	if instance_exists(bol_zombie) {
		cbg.alarm[2]	= 25
		cbg.image_index	= 0
		cbg.state		= cbg_st.shoot
	}
}






