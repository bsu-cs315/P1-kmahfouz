extends Label


func _process(_delta: float) -> void:
	text = "Angle: " + str($"../Ball".angle) + "\n" + "Shot strength: " + str($"../Ball".shot_strength)
