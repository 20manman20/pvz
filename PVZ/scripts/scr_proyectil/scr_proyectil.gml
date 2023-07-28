////////////////////////////////////////////////////// createproy  /////////////////////////////////////////////////
/////////// Crear proyectil con velocidad en X y Y especificos para dar en un objetivo determinado by CuervoN/////////////
function scr_proyectil(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	/*
	argument0 = coordenada x del punto inicial
	argument1 = coordenada y del punto inicial
	argument2 = coordenada x del punto final
	argument3 = coordenada y del punto final
	argument4 = Velocidad minima 300(ejemplo)
	argument5 = Velocidad maxima 600(ejemplo)
	*/


	///Coordenadas del punto inicial y del punto final(target)
	var xi= argument0*room_speed
	var yi= argument1*room_speed
	var xf= argument2*room_speed
	var yf= argument3*room_speed

	var potmin=argument4 //Velocidad minima = 300(ejemplo)
	var potmax=argument5 //Velocidad maxima = 600(ejemplo)
	var obj		= argument6
	var grav=9.8 //Gravedad global.grav=9.8(ejemplo)

	xdir=sign(xf-xi) //Guardar direccion
	xf=xi+abs(xf-xi) //manejar xf-xi como positivo, para evitar algunos errores
	if xi==xf{xf=xi+1} //Evitar que xf y xi sean iguales, porque da uno que otro error...
	var c= (grav/(2*power(potmin,2)))*(power(xf-xi,2)) //Calcular un valor(c) con ecuacion extraña( :D ) para reducir codigo

	while(((power(xf-xi,2)-4*(c*(c-yf+yi))))<0){ //Evitar algunos errores que pueden surgir si el target es imposible de alcanzar
	potmin+=5
	if xi==xf{xf=xi+1}
	c= (grav/(2*power(potmin,2)))*(power(xf-xi,2))
	}

	var res=(-(xf-xi)-sqrt(power(xf-xi,2)-4*(c*(c-yf+yi))))/(-2*c) //Ecuacion extraña :D

	ang=radtodeg(arctan(res)) //tranformacion de resultado
	if xdir=-1{ang+=2*abs(ang-90)} //modificar angulo si es necesario

	//ang es el angulo o direccion a la cual lanzar el proyectil

	ins=instance_create_depth(argument0,argument1,depth,obj) //Crear el objeto que funciona como proyectil ("proy" es el objeto)
	var pot=min(potmin,potmax) //acotar velocidad de acuerdo a la velocidad maxima
	ins.hspeed=lengthdir_x(pot,ang)/room_speed //darle velocidad en x al proyectil
	ins.vspeed=lengthdir_y(pot,ang)/room_speed //darle velocidad en y al proyectil

	return ins


}
