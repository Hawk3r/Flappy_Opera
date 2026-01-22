extends Node2D
@onready var main = get_tree().get_root().get_node("gameplay")
@onready var projectile= load("res://obstacle.tscn")
@onready var timer = $Tim
@onready var movetimer = $Tim2


# Define the boundaries of the allowed space
var min_y = -50
var max_y = -300
var updown = true
func _ready():
	timer.timeout.connect(_on_cooldown_timeout)
	timer.start()
	#movetimer.timeout.connect(_on_movecooldown_timeout)
	#movetimer.start()
	pass

func shoot():
	var instance = projectile.instantiate()
	instance.spawnPos = global_position
	instance.spawnRot = rotation
	instance.add_to_group("obstacle")
	main.add_child.call_deferred(instance)
	pass
	
func _on_cooldown_timeout():
	shoot()
#func _on_movecooldown_timeout():
	#move()
	
#func move():
	#if position.y > min_y:
		#updown = true
		#print("yep")
	#elif position.y < max_y:
		#updown = false
	#
	#if updown: 
		#position.y += 20
	#elif not updown:
		#position.y -= 20
	##position += input_direction 

	pass
