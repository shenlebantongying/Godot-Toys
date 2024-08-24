extends Node2D

var cell = preload("res://cell.tscn")

@onready
var statusLabel = $VBoxContainer/StatusLabel as Label

@onready
var mainGrid = $VBoxContainer/MainGrid as GridContainer

@onready
var restartBtn = $VBoxContainer/RestartBtn as Button

signal oneSideWin(s:Global.round_repr);

func _ready() -> void:
	for i in range(9):
		var cell_instance = cell.instantiate()
		mainGrid.add_child(cell_instance)
		cell_instance.connect("ready_to_check_mate",check_mate)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func check_mate():
	var tri_equal = func (a,b,c) -> bool:
		if (a!=Global.round_repr.Empty) && (a==b) && (b==c):
			return true
		else:
			return false

	var c = func (n:int):
		var t = mainGrid.get_child(n)
		return t.internal_state

	for h in range(3):
		if(tri_equal.call(c.call(h*3+0),c.call(h*3+1),c.call(h*3+2))):
			emit_signal("oneSideWin",c.call(h*3+0))

	for v in range(3):
		if(tri_equal.call(c.call(v+3*0),c.call(v+3*1),c.call(v+3*2))):
			emit_signal("oneSideWin",c.call(v+3*0))
	if(tri_equal.call(c.call(0),c.call(4),c.call(8))):
		emit_signal("oneSideWin",c.call(0))
	if(tri_equal.call(c.call(2),c.call(4),c.call(6))):
		emit_signal("oneSideWin",c.call(0))


func _on_one_side_win(s: Global.round_repr) -> void:
	statusLabel.set_text("winner -> "+Global.round_to_str(s))
	Global.playing = false


func _on_restart_btn_pressed() -> void:
	Global.playing = true
	for c in mainGrid.get_children():
		c.free()
	for i in range(9):
		var cell_instance = cell.instantiate()
		mainGrid.add_child(cell_instance)
		cell_instance.connect("ready_to_check_mate",check_mate)
	statusLabel.set_text("click to play.")
