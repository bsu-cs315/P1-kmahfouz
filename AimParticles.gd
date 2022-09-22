extends CPUParticles2D


var default_grav := 200
var grav_modifier := 20


func _process(_delta: float) -> void:
	rotation_degrees = $"../Ball".angle - 90
	if Input.is_action_pressed("Launch"):
		gravity.y += grav_modifier
	else:
		gravity.y = default_grav
