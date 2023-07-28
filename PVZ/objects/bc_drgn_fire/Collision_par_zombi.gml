event_inherited()

if instance_exists(other) {
	var anim = instance_create_depth(x,y,other.depth-1,o_animated)
	randomize()
	anim.sprite_index = choose(s_lzg_g_fx_0,s_lzg_g_fx_1)
}