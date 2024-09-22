shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec4 current_color = texture(TEXTURE, UV);
	float average_color = (current_color.r + current_color.g + current_color.b) / 3.0;
	COLOR = vec4(average_color, average_color, average_color, current_color.a);
}
