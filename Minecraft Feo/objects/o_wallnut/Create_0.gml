event_inherited()

enum wlnt_st {
	entry, 
	idle
}

sprite_entry	= [	[s_wallnut_e_01, -1, -1],	//00
					[s_wallnut_e_01, -1, -1],	//45
					[s_wallnut_e_01, -1, 1],		//90
					[s_wallnut_e_01, -1, 1],		//135
					[s_wallnut_e_00, -1, -1],	//180
					[s_wallnut_e_00, -1, -1],	//225
					[s_wallnut_e_00, -1, 1],		//270
					[s_wallnut_e_00, -1, 1]]		//31
					
sprite_ar[0]	= [	[s_wallnut_deg0_01, -1, -1],	//00
					[s_wallnut_deg0_01, -1, -1],	//45
					[s_wallnut_deg0_01, -1, 1],		//90
					[s_wallnut_deg0_01, -1, 1],		//135
					[s_wallnut_deg0_00, -1, -1],	//180
					[s_wallnut_deg0_00, -1, -1],	//225
					[s_wallnut_deg0_00, -1, 1],		//270
					[s_wallnut_deg0_00, -1, 1]]		//315

sprite_ar[1]	= [	[s_wallnut_deg1_01, -1, -1],	//00
					[s_wallnut_deg1_01, -1, -1],	//45
					[s_wallnut_deg1_01, -1, 1],		//90
					[s_wallnut_deg1_01, -1, 1],		//135
					[s_wallnut_deg1_00, -1, -1],	//180
					[s_wallnut_deg1_00, -1, -1],	//225
					[s_wallnut_deg1_00, -1, 1],		//270
					[s_wallnut_deg1_00, -1, 1]]		//315
					
sprite_ar[2]	= [	[s_wallnut_deg2_01, -1, -1],	//00
					[s_wallnut_deg2_01, -1, -1],	//45
					[s_wallnut_deg2_01, -1, 1],		//90
					[s_wallnut_deg2_01, -1, 1],		//135
					[s_wallnut_deg2_00, -1, -1],	//180
					[s_wallnut_deg2_00, -1, -1],	//225
					[s_wallnut_deg2_00, -1, 1],		//270
					[s_wallnut_deg2_00, -1, 1]]		//315					

degrad		= 0

state		= wlnt_st.idle
sprite_i	= sprite_ar[degrad]
