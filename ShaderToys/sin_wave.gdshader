shader_type canvas_item;

void fragment() {
	float amplitude = 0.5;
	float frequency = PI * 4.0;
	
	float x = UV.x;
	float sin_x = sin(x*frequency)*amplitude;
	COLOR.rgb = vec3(step(abs(UV.y - sin_x - 0.5),0.01));
}
