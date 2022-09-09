extends CPUParticles2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation_degrees = $"../Ball".angle - 90
	if Input.is_action_pressed("Launch"):
		gravity.y += 20
	else:
		gravity.y = 200
