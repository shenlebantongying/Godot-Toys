extends Area2D

signal game_failed

func on_ball_enter(_ball):
	emit_signal("game_failed")
