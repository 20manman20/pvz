draw_sprite_ext(sprite_index,image_index,	drawx,drawy,image_xscale,image_yscale,0,image_blend,1)
if damage_cooldown > 0 {
	shader_set(sh_damage_fx)
	draw_sprite_ext(sprite_index,image_index,	drawx,drawy,image_xscale,image_yscale,0,image_blend,damage_cooldown/1.5)
	shader_reset()
}