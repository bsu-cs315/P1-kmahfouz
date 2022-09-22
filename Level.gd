extends Node2D


func _ready() -> void:
# warning-ignore:return_value_discarded
	$Ball.connect("game_over_started",self,"_on_game_over_started")


func _on_game_over_started():
	for node in get_tree().get_nodes_in_group("game_over_group"):
		node.visible = false

	$PlayAgainButton.visible = true
	$PlayAgainButton.disabled = false
