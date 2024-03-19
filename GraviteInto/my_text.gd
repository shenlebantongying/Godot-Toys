extends Label

var score_format = "Score: {score}"
var score = 0

func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass

func on_new_score_arrived(score: int) -> void:
	score = score
	set_text(score_format.format({"score": score}))
