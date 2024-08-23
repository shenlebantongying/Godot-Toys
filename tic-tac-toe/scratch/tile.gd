extends Sprite2D

func _on_button_button_down() -> void:
		material.set_shader_parameter("input_color",Vector3(1.0,0.0,0.0))


func _on_button_button_up() -> void:
		material.set_shader_parameter("input_color",Vector3(0.0,1.0,0.0))
