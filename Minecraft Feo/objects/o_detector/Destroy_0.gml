if instance_exists(peashooter) {
	peashooter.bol_zombie	= bol_zombie
	if instance_exists(bol_zombie) {
		peashooter.alarm[2]		= 20
		peashooter.image_index	= 0
		peashooter.state		= pea_st.shoot
	}
}






