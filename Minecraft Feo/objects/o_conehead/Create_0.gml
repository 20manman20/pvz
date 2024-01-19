event_inherited()

spd			= [0,0,0]
spd_hv_max	= .12+Z_SPD_RANDOM_PLUS
bol_floor	= false

state		= z_st.entry
plant_atk	= noone
plant_stomp	= noone

degrad		= 0

sprite_ar[z_st.walk]	= [	[[s_zombie_w_01_legs,[s_conehead_w_01_deg0,s_conehead_w_01_deg1,s_conehead_w_01_deg2]]	,	-1,1],		//0
							[[s_zombie_w_01_legs,[s_conehead_w_01_deg0,s_conehead_w_01_deg1,s_conehead_w_01_deg2]]	,	-1,-1],		//45
							[[s_zombie_w_01_legs,[s_conehead_w_01_deg0,s_conehead_w_01_deg1,s_conehead_w_01_deg2]]	,	-1,-1],		//90
							[[s_zombie_w_01_legs,[s_conehead_w_01_deg0,s_conehead_w_01_deg1,s_conehead_w_01_deg2]]	 ,	-1,1],		//135
							[[s_zombie_w_00_legs,[s_conehead_w_00_deg0,s_conehead_w_00_deg1,s_conehead_w_00_deg2]]	,	-1,1],		//180
							[[s_zombie_w_00_legs,[s_conehead_w_00_deg0,s_conehead_w_00_deg1,s_conehead_w_00_deg2]]	,	-1,1],		//225
							[[s_zombie_w_00_legs,[s_conehead_w_00_deg0,s_conehead_w_00_deg1,s_conehead_w_00_deg2]]	,	-1,1],		//270
							[[s_zombie_w_00_legs,[s_conehead_w_00_deg0,s_conehead_w_00_deg1,s_conehead_w_00_deg2]]	,	-1,-1]]		//315

sprite_ar[z_st.atk]		= [	[[s_conehead_a_01_0,s_conehead_a_01_1]	,	-1,1],		//0
							[[s_conehead_a_01_0,s_conehead_a_01_1]	,	-1,-1],		//45
							[[s_conehead_a_01_0,s_conehead_a_01_1]	,	-1,-1],		//90
							[[s_conehead_a_01_0,s_conehead_a_01_1]	,	-1,1],		//135
							[[s_conehead_a_00_0,s_conehead_a_00_1]	,	-1,1],		//180
							[[s_conehead_a_00_0,s_conehead_a_00_1]	,	-1,1],		//225
							[[s_conehead_a_00_0,s_conehead_a_00_1]	,	-1,1],		//270
							[[s_conehead_a_00_0,s_conehead_a_00_1]	,	-1,1]]		//270
							
sprite_ar[z_st.entry]	= [	[[s_conehead_e_01_full,s_conehead_e_01_full]	,	-1,1],		//0
							[[s_conehead_e_01_full,s_conehead_e_01_full]	,	-1,-1],		//45
							[[s_conehead_e_01_full,s_conehead_e_01_full]	,	-1,-1],		//90
							[[s_conehead_e_01_full,s_conehead_e_01_full]	,	-1,1],		//135
							[[s_conehead_e_00_full,s_conehead_e_00_full]	,	-1,1],		//180
							[[s_conehead_e_00_full,s_conehead_e_00_full]	,	-1,1],		//225
							[[s_conehead_e_00_full,s_conehead_e_00_full]	,	-1,1],		//270
							[[s_conehead_e_00_full,s_conehead_e_00_full]	,	-1,-1]]		//315

sprite_i				= sprite_ar[state]
sprite_i_0				= sprite_i[_angle div 45][0][0]
sprite_i_1				= sprite_i[_angle div 45][0][1]
 