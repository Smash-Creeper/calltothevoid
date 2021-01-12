depth = DEPTH_BATTLE.BG;

enum BACKGROUND_EFFECTS
{
	Normal,
	Wave
}

enum EFFECT_DATA
{
	Alpha,
	ScaleX,
	ScaleY
}

effect = BACKGROUND_EFFECTS.Normal;

uni_wave_time = shader_get_uniform(shd_wave, "Time");
uni_wave_texel = shader_get_uniform(shd_wave, "Texel");

uni_wave_speed = shader_get_uniform(shd_wave, "WaveSpeed");
uni_wave_freq = shader_get_uniform(shd_wave, "WaveFreq");
uni_wave_size = shader_get_uniform(shd_wave, "WaveSize");

wave_speed = 0.003;
wave_freq = 30;
wave_size = 5;