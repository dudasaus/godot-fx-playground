shader_type canvas_item;

uniform float band_size = 4.0;

void fragment() {
	vec2 pixel = UV / TEXTURE_PIXEL_SIZE;
	vec3 mix_color = vec3(0);
	float time_offset = TIME * band_size * 2.0;
	float multiplier = floor(mod(pixel.y - time_offset, band_size * 2.0) / band_size);
	vec4 current_color = texture(TEXTURE, UV);
	COLOR = mix(current_color, vec4(mix_color, current_color.a), multiplier * 0.2);
}

