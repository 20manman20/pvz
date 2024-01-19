
if state == br_st.fall || state == br_st.jump {
	audio_play_sound(choose(snd_sun_00,snd_sun_01,snd_sun_02,snd_sun_03),1,0)
	state	= br_st.fly
}

