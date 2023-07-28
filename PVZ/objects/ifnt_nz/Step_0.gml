if health_ <= 0 {
	eatable = false
} else {
	eatable = true
}

depth	= abs(cas_y-5) * 100

i_xscale	= lerp( i_xscale, image_xscale, .1)

if dmg_alpha > 0 {
	dmg_alpha -= .1
}