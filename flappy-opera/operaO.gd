extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var score = 0
@export var gameover: Label
@export var restart: Button

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if (Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("mouse")):
		velocity.y = JUMP_VELOCITY
	

	move_and_slide() 

func _on_area_2d_body_entered(body: Node2D) -> void:

	#print("HIT",body.name)
	if body.is_in_group("obstacle"):
		print("Gameover")
		get_tree().paused = true
		gameover.visible = true
		gameover.text = "Game Over"
		restart.visible = true
	pass # Replace with function body.
