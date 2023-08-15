event_inherited()

var _angle	= (cam_angle_r + angle_z + 360*5) % 360

sprite_index	= sprite_i[_angle div 45][0]

if sprite_i[_angle div 45][1] != -1 {
	image_index		= sprite_i[_angle div 45][1]
}

image_xscale	= sprite_i[_angle div 45][2]

if !bol_ready {
	x	= lerp(x,(o_game.mx+.5)*CEL_W,.4)
	y	= lerp(y,(o_game.my+.5)*CEL_W,.4)
	z	= lerp(z,-o_game.mz*CEL_W,.7)
}

