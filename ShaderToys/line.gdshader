shader_type canvas_item;

float plot(vec2 st){
	return smoothstep(0.02,0.0,abs(st.y-st.x));
}

void fragment() {
	vec2 st = UV.xy;
	float y = st.x;
	vec3 color = vec3(y);
	float pct = plot (st);
	COLOR.rgb = (1.0-pct)*color + pct*vec3(1.0,0.0,0.0);
}
