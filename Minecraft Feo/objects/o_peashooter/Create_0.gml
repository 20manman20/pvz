event_inherited()
#macro	p_shoot_cad	60 //60
bol_zombie	= noone
shoot_cad	= p_shoot_cad// + irandom_range(-2,2)

enum pea_st	{
	entry,
	idle,
	shoot
}
state		= pea_st.idle

hspeed		= -.1
vspeed		= .1

sprite_ar[pea_st.entry]	= [	[s_peashooter_e_01, -1, -1],	//00
							[s_peashooter_e_01, -1, -1],	//45
							[s_peashooter_e_01, -1, 1],		//90
							[s_peashooter_e_01, -1, 1],		//135
							[s_peashooter_e_00, -1, -1],	//180
							[s_peashooter_e_00, -1, -1],	//225
							[s_peashooter_e_00, -1, 1],		//270
							[s_peashooter_e_00, -1, 1]]		//315
							
sprite_ar[pea_st.idle]	= [	[s_peashooter_i_01, -1, -1],	//00
							[s_peashooter_i_01, -1, -1],	//45
							[s_peashooter_i_01, -1, 1],		//90
							[s_peashooter_i_01, -1, 1],		//135
							[s_peashooter_i_00, -1, -1],	//180
							[s_peashooter_i_00, -1, -1],	//225
							[s_peashooter_i_00, -1, 1],		//270
							[s_peashooter_i_00, -1, 1]]		//315

sprite_ar[pea_st.shoot]	= [	[s_peashooter_s_01, -1, -1],	//00
							[s_peashooter_s_01, -1, -1],	//45
							[s_peashooter_s_01, -1, 1],		//90
							[s_peashooter_s_01, -1, 1],		//135
							[s_peashooter_s_00, -1, -1],	//180
							[s_peashooter_s_00, -1, -1],	//225
							[s_peashooter_s_00, -1, 1],		//270
							[s_peashooter_s_00, -1, 1]]		//315
							
sprite_i	= sprite_ar[state]