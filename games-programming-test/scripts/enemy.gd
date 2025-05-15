extends RigidBody2D

var limit : float = -300.0


func _physics_process(delta: float) -> void:
	var pos = self.global_position
	pos = self.position.x
	if pos == limit:
		queue_free()


func _on_area_2d_area_entered(area: Area2D) -> void:
	queue_free()
	pass # Replace with function body.
