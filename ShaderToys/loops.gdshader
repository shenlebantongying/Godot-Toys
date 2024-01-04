shader_type canvas_item;

#define TickWidth 0.1

void fragment() {
	COLOR.rgb = vec3(1.0);
	vec3 gridColor = vec3(0.1);
	for(float i = 0.0; i < 1.0; i+= TickWidth){
		if ( abs (UV.x - i ) < 0.005){
			COLOR.rgb = gridColor;
		}
		if ( abs (UV.y - i ) < 0.005){
			COLOR.rgb = gridColor;
		}
	}
}

