depth = DEPTH_BATTLE.BG;

enum BACKGROUND_EFFECTS
{
	Normal,
	Sans
}

effect = BACKGROUND_EFFECTS.Normal;

uni_wave_time1 = shader_get_uniform(shd_sans1, "Time");
uni_wave_texel1 = shader_get_uniform(shd_sans1, "Texel");

uni_wave_time2 = shader_get_uniform(shd_sans2, "Time");
uni_wave_texel2 = shader_get_uniform(shd_sans2, "Texel");

tick = 0;

sprite = 0;