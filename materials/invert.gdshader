shader_type canvas_item;

void fragment() {
	vec4 current_color = texture(TEXTURE, UV);
	COLOR = vec4(vec3(1.0) - current_color.rgb, current_color.a);
}
