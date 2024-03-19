shader_type canvas_item;

void fragment() {
	COLOR =vec4(1.0)-vec4( smoothstep(0.5, 0.5 , length(UV - vec2(0.5))) );
}
