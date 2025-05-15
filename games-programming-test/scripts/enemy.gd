extends RigidBody2D

var limit : float = -300.0

func _physics_process(delta: float) -> void:
	var pos = self.global_position
	pos = self.position.x
	if pos == limit: #trying to delete enemies based on location
		queue_free()
	
func _on_area_2d_area_entered(area: Area2D) -> void:
	queue_free() # Ended up using world boundaries to delete enemies
	pass # Replace with function body.
