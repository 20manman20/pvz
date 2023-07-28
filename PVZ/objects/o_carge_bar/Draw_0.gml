
var i
if global.team_turn = "Planta" i = 0
else i = 1
draw_sprite(s_turno_gui_02,charge,x,y)
draw_self()

draw_sprite(s_turno_gui_01,i,x,y)

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_set_font(Aharoni)
draw_text(x-1,y+1,string(global.turno))
/*
var count	= instance_number(par_planta) + instance_number(par_zombi) + instance_number(sol) + instance_number(sol_z) + instance_number(dado) + instance_number(o_damage)
draw_text(x-1,y+1,string(count))
*/
draw_set_valign(fa_top)

//draw_text(x+20,y,string(can_change))
