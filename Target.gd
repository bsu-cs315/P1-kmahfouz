extends RigidBody2D


func _on_Target_body_entered(_body: Node) -> void:
	print("Collision!")
