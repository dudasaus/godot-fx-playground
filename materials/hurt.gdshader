shader_type canvas_item;

void fragment() {
	vec4 current_color = texture(TEXTURE, UV);
	vec3 mix_color = vec3(1.0, 0.0, 0.0);
	float seconds = 0.5;
	float multiplier = sin(PI * mod(TIME, seconds) / seconds);
	COLOR = mix(current_color, vec4(mix_color, current_color.a), multiplier * 0.5);
}

