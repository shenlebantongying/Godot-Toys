extends CharacterBody2D

const SPEED = 200.0

var xdir = 1
var xvelocity = 1 
var ydir = 1

func invert_x():
	xdir *= -1

func random_y():
	ydir *= -1
	xvelocity = randf()

func reset():
	xvelocity = 1
	xdir= 1
	ydir = 1
	set_global_position(Vector2(50,50))
	
func _physics_process(_delta):
	velocity.x = xdir * SPEED * xvelocity
	velocity.y = ydir * SPEED
	move_and_slide()
