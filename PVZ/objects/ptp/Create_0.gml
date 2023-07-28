event_inherited()
costo = 25
health_ = 200
health_max = health_
i		= 0
activated_	= false
can			= true

image_index = 1
image_speed	= 0

type		= "Explode"

select_		= false

c			= 1

var x_1		= o_cntrl.bg_x + cas_x*20
var y_1		= o_cntrl.bg_y + cas_y*20

if collision_rectangle(x_1,y_1,x_1+20,y_1+20,par_planta,false,true) {
	instance_destroy()
}