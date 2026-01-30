extends Node2D
@onready var main = get_tree().get_root().get_node("gameplay")
@onready var projectile= load("res://obstacle.tscn")
@onready var timer = $Tim
@export var scoreboard: Label

var min_y = -200
var max_y = 250
var loc = 0
var score = 0
func _ready():
	timer.timeout.connect(_on_cooldown_timeout)
	timer.start()
	pass

func shoot():
	loc = randf_range(min_y, max_y)
	global_position.y = loc
	print(loc)
	var instance = projectile.instantiate()
	instance.spawnPos = global_position
	main.add_child.call_deferred(instance)
	instance.score.connect(setscore)
	
	pass
	
func _on_cooldown_timeout():
	shoot()
	pass


func setscore():
	score+=1
	scoreboard.text = "score = "+ str(score)
	pass
