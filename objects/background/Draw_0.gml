draw_set_alpha(image_alpha)
switch (effect) {
    case BACKGROUND_EFFECTS.Normal:
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
		break;
	
	case BACKGROUND_EFFECTS.Sans:
		shader_set(shd_sans1);
		shader_set_uniform_f(uni_wave_time1, tick);
		var tex = sprite_get_texture(sprite, 0);
		shader_set_uniform_f(uni_wave_texel1, texture_get_texel_width(tex), texture_get_texel_height(tex));
		draw_sprite_ext(sprite, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
		shader_set(shd_sans2);
		shader_set_uniform_f(uni_wave_time2, tick);
		var tex = sprite_get_texture(sprite, 1);
		shader_set_uniform_f(uni_wave_texel2, texture_get_texel_width(tex), texture_get_texel_height(tex));
		draw_sprite_ext(sprite, 1, x, y, image_xscale, image_yscale, 0, c_white, image_alpha/2);
		shader_reset();
	break;
}