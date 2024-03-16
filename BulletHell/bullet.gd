extends Area2D

var speed = 200


func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
	position += transform.x * speed * delta



func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
