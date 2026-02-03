extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -500.0
var score = 0
@export var gameover: Label
@export var restart: Button
var movable = true
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if movable:
		if (Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("mouse")):
			velocity.y = JUMP_VELOCITY
			
	
	if (velocity.y < 0):
		$AnimatedSprite2D.play()
	elif (velocity.y > 0):
		$AnimatedSprite2D.stop()
	move_and_slide() 
	
	if position.y > 1100 or (position.y< -500):
		gameEnd()
		queue_free()

func _on_area_2d_body_entered(body: Node2D) -> void:

	#print("HIT",body.name)
	if body.is_in_group("obstacle"):
		gameEnd()
	pass # Replace with function body.

func gameEnd():
	print("Gameover")
	movable = false
	gameover.visible = true
	gameover.text = "Game Over"
	restart.visible = true
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	get_tree().paused = true
	$CollisionShape2D.set_deferred("disabled",true)
	velocity.y = -600
	
