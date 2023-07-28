var create = instance_create_depth(x,y-9,depth+1,bnk_ch_fst)
if instance_exists(create) {
	create.cas_y		= cas_y
	create.damage_		= 50
	create.hspeed	   *= 5*dir_x
}