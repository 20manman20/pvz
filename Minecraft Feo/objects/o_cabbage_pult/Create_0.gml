event_inherited()
#macro	c_shoot_cad	90

enum cbg_st	{
	entry,
	idle,
	shoot
}

state		= cbg_st.idle

sprite_ar[cbg_st.entry]	= [	[s_cabbage_pult_e_01, -1, -1],	//00
							[s_cabbage_pult_e_01, -1, -1],	//45
							[s_cabbage_pult_e_01, -1, 1],		//90
							[s_cabbage_pult_e_01, -1, 1],		//135
							[s_cabbage_pult_e_00, -1, -1],	//180
							[s_cabbage_pult_e_00, -1, -1],	//225
							[s_cabbage_pult_e_00, -1, 1],		//270
							[s_cabbage_pult_e_00, -1, 1]]		//315

sprite_ar[cbg_st.idle]	= [	[s_cabbage_pult_i_01, -1, -1],	//00
							[s_cabbage_pult_i_01, -1, -1],	//45
							[s_cabbage_pult_i_01, -1, 1],		//90
							[s_cabbage_pult_i_01, -1, 1],		//135
							[s_cabbage_pult_i_00, -1, -1],	//180
							[s_cabbage_pult_i_00, -1, -1],	//225
							[s_cabbage_pult_i_00, -1, 1],		//270
							[s_cabbage_pult_i_00, -1, 1]]		//315

sprite_ar[cbg_st.shoot]	= [	[s_cabbage_pult_s_01, -1, -1],	//00
							[s_cabbage_pult_s_01, -1, -1],	//45
							[s_cabbage_pult_s_01, -1, 1],		//90
							[s_cabbage_pult_s_01, -1, 1],		//135
							[s_cabbage_pult_s_00_old_3, -1, -1],	//180
							[s_cabbage_pult_s_00_old_3, -1, -1],	//225
							[s_cabbage_pult_s_00_old_3, -1, 1],	//270
							[s_cabbage_pult_s_00_old_3, -1, 1]]	//315
							
bol_zombie	= noone
shoot_cad	= c_shoot_cad
target_z	= [0,0,0]

sprite_i	= sprite_ar[state]
