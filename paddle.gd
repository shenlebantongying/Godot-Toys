extends Area2D

signal ball_touched

func _on_ball_enter(ball):
	ball.random_y()
	emit_signal("ball_touched")

func _process(_delta):
	var mpos = get_viewport().get_mouse_position()
	if mpos.x <=300:
		set_position(Vector2(mpos.x,290))
