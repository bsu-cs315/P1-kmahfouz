extends RigidBody2D

export var shotStrength: float = 500
var angle = -45

# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument

func _process(delta):
	var direction = Vector2(1,0).rotated(deg2rad(angle))
	if Input.is_action_just_pressed("Launch"):
		var velocity = direction * shotStrength
		apply_impulse(Vector2.ZERO, velocity)
	elif Input.is_action_pressed("Angle down"):
		angle += 1
		print(angle)
	elif Input.is_action_pressed("Angle up"):
		angle -= 1
		print(angle)
