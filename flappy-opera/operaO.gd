extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var score = 0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if (Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("mouse")):
		velocity.y = JUMP_VELOCITY
	

	move_and_slide() 

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("score"):
		score+=1
	#print("HIT",body.name)
	elif body.is_in_group("obstacle"):
		print("Gameover")
		get_tree().paused = true
	pass # Replace with function body.
