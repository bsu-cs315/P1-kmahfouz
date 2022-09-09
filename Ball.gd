extends RigidBody2D

export var shotStrength = 0
var angle = -45
var minAngle= 0
var maxAngle= -90
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument

func _process(delta):
	var direction = Vector2(1,0).rotated(clamp(deg2rad(angle), deg2rad(maxAngle), deg2rad(minAngle)))
	if Input.is_action_pressed("Launch"):
		shotStrength += 50
		print(shotStrength)
	elif Input.is_action_just_released("Launch"):
		var velocity = direction * shotStrength
		apply_impulse(Vector2.ZERO, velocity)
	elif Input.is_action_pressed("Angle down") && angle < 0:
		angle += 1
		print(angle)
	elif Input.is_action_pressed("Angle up") && angle > -90:
		angle -= 1
		print(angle)
