x = lerp(x,x_,0.3)
y = lerp(y,y_,0.3)
image_index = id_

if pos_shadow = true {
	y_shadow = y+3
} else {
	var rest = 0.05
	if id_ = 5 rest = 0.01
	image_alpha-=rest
	y = lerp(y,y_+4,0.5)
}

if image_alpha <= 0 instance_destroy()

if sprite_index != spc_carta_count_z_01 {
	image_index = id_
}