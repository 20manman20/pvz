
event_inherited()

x	= lerp(x,x_to,.05)

image_alpha = (x_to-x)/(40 - sprite_width)

if image_alpha <= 0 instance_destroy()