shader_type canvas_item;

uniform float num_pixels = 16.0;

void fragment() {
	vec2 spot = round(UV * num_pixels) / num_pixels;
	COLOR = texture(TEXTURE, spot);
}
