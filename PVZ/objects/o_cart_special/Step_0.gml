x = lerp(x,x_to,0.15)

if disappear {
	image_alpha-=.05
} else {
	image_alpha	= 1 - abs(x-x_to)*.02
}

if image_alpha <= 0 instance_destroy()

image_index = spc_cart_i