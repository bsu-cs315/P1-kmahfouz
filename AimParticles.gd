extends CPUParticles2D


var defaultGrav = 200
var gravModifier = 20

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation_degrees = $"../Ball".angle - 90
	if Input.is_action_pressed("Launch"):
		gravity.y += gravModifier
	else:
		gravity.y = defaultGrav
