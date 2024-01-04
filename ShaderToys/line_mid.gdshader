shader_type canvas_item;

void fragment() {
	vec3 sth = vec3(0.2,0.6,0.15);
	vec3 bgc = vec3(1.0);
	
	if( 0.5<UV.x && UV.x <0.55 ) {
		COLOR.rgb = sth;
	} else {
		COLOR.rgb = bgc;
	}
}
