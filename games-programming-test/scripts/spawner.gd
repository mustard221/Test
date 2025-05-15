extends Node2D

@export var enemy_scene:PackedScene
@export var timer: Timer
@export var enemies: Label

@onready var s: PackedScene

var enemies_amount = 0

func _on_timer_timeout() -> void:
	var spawner = $"." 
	var spawn = enemy_scene.instantiate()
	var s = get_viewport().size #instantiating the enemy scene and taking the viewport for spawning
	
	if enemy_scene.instantiate():
		print("spawned") #debug, making sure code was being run
	
	spawn.position.x = 790.0 #setting points for enemies to spawn
	spawn.position.y = randf_range(10, s.x - 10) #randomised spawn sequence
	spawn.name = "enemy " + str(spawner)
	
	enemies_amount = enemies_amount + 1
	enemies.text = "Enemies: " + str(enemies_amount) # Display the enemy amount, added everytime they spawn
	
	get_tree().get_root().add_child(spawn) 
	
	scale = Vector2.ZERO
	##var tween = create_tween().set_trans(Tween.TRANS_CIRC)
	##tween.tween_property(spawn, )
	pass # Replace with function body.
