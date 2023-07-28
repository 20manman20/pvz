event_inherited()

draw_self()

if fire {
	var col_		= c_blue
	if plus == 2	col_	= c_red
	draw_sprite_ext( sprite_index, image_index, x, y, 1,1, 0, col_, 1)
}