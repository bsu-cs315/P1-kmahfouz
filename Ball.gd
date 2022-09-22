extends RigidBody2D
export var shot_strength = 0
var angle = -45
var min_angle= 0
var max_angle= -90
var counter = 0

signal game_over_started

func _process(_delta):
	var direction = Vector2(1,0).rotated(deg2rad(angle))
	var velocity = direction * shot_strength
	if counter > 4:
		shot_strength = 0
		emit_signal("game_over_started")
	elif Input.is_action_pressed("Launch"):
		shot_strength += 50
		print(shot_strength)
	elif Input.is_action_just_released("Launch"):
		apply_impulse(Vector2.ZERO, velocity)
		shot_strength = 0
		counter += 1
		$AudioStreamPlayer2D.play()
	elif Input.is_action_pressed("Angle down") and angle < min_angle:
		angle += 1
		print(angle)
	elif Input.is_action_pressed("Angle up") && angle > max_angle:
		angle -= 1
		print(angle)

