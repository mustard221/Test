extends Node2D

@export var enemy_scene:PackedScene
@export var timer: Timer
@export var enemies: Label

@onready var s: PackedScene

var enemies_amount = 0

func _on_timer_timeout() -> void:
	var spawner = $"." 
	var spawn = enemy_scene.instantiate()
	var s = get_viewport().size
	
	if enemy_scene.instantiate():
		print("spawned")
	
	spawn.position.x = 790.0
	spawn.position.y = randf_range(10, s.x - 10)
	spawn.name = "enemy " + str(spawner)
	
	enemies_amount = enemies_amount + 1
	enemies.text = "Enemies:" + str(enemies_amount)
	
	get_tree().get_root().add_child(spawn) 
	
	scale = Vector2.ZERO
	##var tween = create_tween().set_trans(Tween.TRANS_CIRC)
	##tween.tween_property(spawn, )
	pass
	pass # Replace with function body.
	
func _dead() -> void:
	enemies_amount = enemies_amount - 1
