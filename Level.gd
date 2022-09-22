extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
# warning-ignore:return_value_discarded
	$Ball.connect("game_over_started",self,"_on_game_over_started")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
func _on_game_over_started():
	for node in get_tree().get_nodes_in_group("game_over_group"):
		node.visible = false
	$PlayAgainButton.visible = true
	$PlayAgainButton.disabled = false
	
