extends Node2D

@export var enemy_scene:PackedScene

func _process(delta: float) -> void:
	var spawner = $"." 
	var spawn = enemy_scene.instantiate()
	
	if enemy_scene.instantiate():
		print("spawned")
	
	spawn.global_position = spawner.global_position
	spawn.name = "enemy " + str(spawner)
	get_tree().get_root().add_child(spawn) 
	
	scale = Vector2.ZERO
	##var tween = create_tween().set_trans(Tween.TRANS_CIRC)
	##tween.tween_property(spawn, )
	pass
