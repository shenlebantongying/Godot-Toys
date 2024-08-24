extends Node

# Configured via Menu -> Project Settings

enum round_repr {Empty,X,O}

var cur_round: round_repr = round_repr.X;
var playing:bool = true

func set_cur_round_to_X():
	cur_round = round_repr.X

func set_cur_round_to_O():
	cur_round = round_repr.O

func swap_cur_round():
	match cur_round:
		round_repr.X:
			cur_round = round_repr.O
		round_repr.O:
			cur_round = round_repr.X
		_:
			cur_round = round_repr.X


func get_cur_round_str() -> String:
	return round_to_str(cur_round)

func round_to_str(i:round_repr) -> String:
	match i:
		round_repr.X:
			return "X"
		round_repr.O:
			return "O"
		_:
			return "Emptry"

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass
