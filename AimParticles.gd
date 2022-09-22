extends CPUParticles2D


var default_grav = 200
var grav_modifier = 20

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	rotation_degrees = $"../Ball".angle - 90
	if Input.is_action_pressed("Launch"):
		gravity.y += grav_modifier
	else:
		gravity.y = default_grav
