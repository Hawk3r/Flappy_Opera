extends CharacterBody2D

@export var SPEED = 200
#var dir : float
var spawnPos : Vector2


func _ready():
	
	global_position = spawnPos
	global_rotation = 0

func _physics_process(delta: float) -> void:
	velocity = Vector2(0, -SPEED).rotated(180)
	velocity.y= 0
	move_and_slide()
	#if position.x < -760:
		#queue_free()



#func _on_area_2d_body_entered(body: Node2D) -> void:
#	print("HIT")
#	queue_free()
#	pass 
