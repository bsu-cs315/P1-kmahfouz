extends Button


func _process(_delta: float) -> void:
	if pressed:
# warning-ignore:return_value_discarded
		get_tree().reload_current_scene()
