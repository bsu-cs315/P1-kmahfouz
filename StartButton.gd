extends Button


func _process(_delta: float) -> void:
	if pressed:
		visible = false
		get_node("../ColorRect").visible = false
