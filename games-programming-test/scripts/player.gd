extends CharacterBody2D

@export var life: Label
@export var enemy: PackedScene
@onready var end = $"../Panel"

var vp = get_viewport()
var lives = 5
var move : bool = true
const SPEED = 300.0

func _physics_process(delta):
	if move:
		var Xdirection = Input.get_axis("Left", "Right") #Left and right movement on x-axis using player input
		if Xdirection:
			velocity.x = Xdirection * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
		
		var Ydirection = Input.get_axis("Up", "Down") #Handling up and down movement using y-axis
		if Ydirection:
			velocity.y = Ydirection * SPEED
		else:
			velocity.y = move_toward(velocity.x, 0, SPEED)
		move_and_slide()
	else:
		pass

func _process(delta: float) -> void: #display lives on label
	life.text = ("Lives: ") + str(lives)
	
func _on_area_2d_area_entered(area: Area2D) -> void:
	if lives > 0:
		lives -= 1 #taking away a life on collision with enemies
	else:
		game_over() #ending game if no more lives
		
	pass # Replace with function body.
	
func game_over():
	move = false #handling game over; can't move and UI is displayed
	end.visible = true
