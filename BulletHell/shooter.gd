extends CharacterBody2D

@export var bullet : PackedScene

const SPEED = 300.0

func shoot():
	var newBullet = bullet.instantiate()
	get_tree().root.add_child(newBullet)
	newBullet.transform = $marker.global_transform
	
func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	
	if Input.is_action_just_pressed("shoot"):
		shoot()
	
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED
	move_and_slide()
