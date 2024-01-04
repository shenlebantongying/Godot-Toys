shader_type canvas_item;

void fragment() {
	COLOR.rgb = vec3((round(UV.x * 5.0) + round(UV.y * 5.0))/10.0);
}
