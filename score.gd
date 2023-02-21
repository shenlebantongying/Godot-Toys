extends RichTextLabel

var score = 0

func display_score():
	set_text("Score: %s" % score)

func inc_score():
	score += 1
	display_score()

func on_failed():
	set_text("You lose, final score is %s" % score)

func reset():
	score = 0
	display_score()
	
func _ready():
	display_score()
