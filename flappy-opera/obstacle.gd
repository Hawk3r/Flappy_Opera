extends CharacterBody2D

@export var SPEED = 150
#var dir : float
var spawnPos : Vector2


func _ready():
	
	global_position = spawnPos
	global_rotation = 0

func _physics_process(delta: float) -> void:
	velocity = Vector2.LEFT *SPEED
	velocity.y= 0
	global_position += velocity * delta
	if global_position.x < -700: 
		queue_free()
	#if position.x < -760:
		#queue_free()



#func _on_area_2d_body_entered(body: Node2D) -> void:
#	print("HIT")
#	queue_free()
#	pass 
