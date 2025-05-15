extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
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
