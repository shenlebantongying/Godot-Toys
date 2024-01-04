shader_type canvas_item;

// why not % ?
float mod(float x, float y){
	return x - y * floor(x/y);
}

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	COLOR = vec4(mod(TIME, 3.0));
}
