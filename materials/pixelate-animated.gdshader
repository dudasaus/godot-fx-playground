shader_type canvas_item;

uniform float min_pixels = 4.0;
uniform float duration = 10.0;

void fragment() {
	float max_pixels = 1.0 / TEXTURE_PIXEL_SIZE.x;
	float num_pixels = mix(min_pixels, max_pixels, sin(mod(TIME, duration) * PI / duration));
	vec2 spot = round(UV * num_pixels) / num_pixels;
	COLOR = texture(TEXTURE, spot);
}
