alarm[0]	= irandom_range(INTERVAL_SUN-INT_SUN_MARG,INTERVAL_SUN+INT_SUN_MARG)
if state {
	var _sun	= instance_create_depth(drawx,drawy-16,depth-1,o_sun)
}
