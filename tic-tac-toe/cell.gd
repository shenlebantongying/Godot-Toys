extends Button

var internal_state :Global.round_repr = Global.round_repr.Empty;

signal ready_to_check_mate

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if(Global.playing && internal_state == Global.round_repr.Empty):
		internal_state = Global.cur_round
		set_text(Global.get_cur_round_str())
		Global.swap_cur_round()

		emit_signal("ready_to_check_mate")
	else:
		pass
