if bol_ready {
	var _sun	= instance_create_depth(x,y,depth-1,o_sun)
	//sun_amount+=50
	_sun.state		= sun_st.jump
	_sun.z			= z-32
	_sun.zstart		= _sun.z
}
alarm[1]	= irandom_range(INTERVAL_SUN-INT_SUN_MARG,INTERVAL_SUN+INT_SUN_MARG)
bol_anim	= 1