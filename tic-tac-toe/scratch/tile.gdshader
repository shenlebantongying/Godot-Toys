shader_type canvas_item;

uniform vec3 input_color = vec3(0.0);

void fragment() {
    COLOR = vec4(input_color,COLOR.a);
}
