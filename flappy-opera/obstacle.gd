extends CharacterBody2D

@export var SPEED = 150
#var dir : float
var spawnPos : Vector2
var spawnRot : float

func _ready():
	#add_to_group("bullet")
	global_position = spawnPos
	global_rotation = 0

func _physics_process(delta: float) -> void:
	velocity = Vector2(0, -SPEED).rotated(180)
	velocity.y= 0
	move_and_slide()
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		var collider = collision.get_collider()
		
		#if collider.name == "CharacterBody2D":
		#	queue_free()
		#	break
	#if position.x < -660:
	#	queue_free()



#func _on_area_2d_body_entered(body: Node2D) -> void:
#	print("HIT")
#	queue_free()
#	pass 
