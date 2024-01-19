event_inherited()
#macro	INTERVAL_SUN	24*60	// [seg]*[fps]20
#macro	INT_SUN_MARG	1*60

bol_anim	= 0
angle_anim	= 0
bol_sun		= 0

enum sunf_st	{
	entry,
	idle
}
state		= sunf_st.idle

sprite_ar[sunf_st.entry]	= [	[s_sunflower_e_01252, -1, -1],	//00
								[s_sunflower_e_01252, -1, -1],	//45
								[s_sunflower_e_01252, -1, 1],		//90
								[s_sunflower_e_01252, -1, 1],		//135
								[s_sunflower_e_00, -1, -1],	//180
								[s_sunflower_e_00, -1, -1],	//225
								[s_sunflower_e_00, -1, 1],		//270
								[s_sunflower_e_00, -1, 1]]		//315
							
sprite_ar[sunf_st.idle]	= [	[s_sunflower_i_01, -1, -1],		//00
							[s_sunflower_i_01, -1, -1],		//45
							[s_sunflower_i_01, -1, 1],		//90
							[s_sunflower_i_01, -1, 1],		//135
							[s_sunflower_i_00, -1, -1],		//180
							[s_sunflower_i_00, -1, -1],		//225
							[s_sunflower_i_00, -1, 1],		//270
							[s_sunflower_i_00, -1, 1]]		//315
							
sprite_i	= sprite_ar[state]