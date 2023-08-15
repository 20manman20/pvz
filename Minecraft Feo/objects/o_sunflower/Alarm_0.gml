alarm[0]	= irandom_range(INTERVAL_SUN-INT_SUN_MARG,INTERVAL_SUN+INT_SUN_MARG)
if bol_ready {
	var _sun	= instance_create_depth(drawx,drawy-16,depth-1,o_sun)
	_sun.state	= sun_st.jump
}
