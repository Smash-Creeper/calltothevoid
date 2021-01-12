switch (effect) {
    case BACKGROUND_EFFECTS.Normal:
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
		break;
	
	case BACKGROUND_EFFECTS.Wave:
		shader_set(shd_wave);
		shader_set_uniform_f(uni_wave_time, current_time);
		var tex = sprite_get_texture(sprite_index, image_index);
		shader_set_uniform_f(uni_wave_texel, texture_get_texel_width(tex), texture_get_texel_height(tex));
		shader_set_uniform_f(uni_wave_speed, wave_speed);
		shader_set_uniform_f(uni_wave_freq, wave_freq);
		shader_set_uniform_f(uni_wave_size, wave_size);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
		shader_reset();
	break;
}