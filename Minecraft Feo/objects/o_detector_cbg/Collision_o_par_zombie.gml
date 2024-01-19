if other.state != z_st.death {
	bol_zombie	= other
	if instance_exists(cbg) {
	cbg.target_z	= [other.x,other.y,other.z]
	}
	instance_destroy()
}