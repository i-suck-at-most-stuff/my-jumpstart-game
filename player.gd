extends CharacterBody2D



const SPEED = 800.0
const JUMP_VELOCITY = -900.0

func _ready() -> void:
	
	if GlobalScript.checkpoint_pos != Vector2(-999, -999):
		global_position = GlobalScript.checkpoint_pos + Vector2(-144, -625) #took awhile to figure out the right things lol
		
	

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	


	
