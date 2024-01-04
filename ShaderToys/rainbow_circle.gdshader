shader_type canvas_item;

void fragment() {
	float rmax = 0.5;
	float rmin = 0.4;
	vec2 c = UV - vec2(0.5);
	
	if(((c.x*c.x + c.y*c.y) < rmax * rmax)
		&& ((c.x*c.x + c.y*c.y) > rmin * rmin))
		{
			COLOR.rgb = vec3(c,0.95);
		}
}