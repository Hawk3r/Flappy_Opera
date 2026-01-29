extends Node2D
var score = 0
@onready var  char= load("res://OperaO.tscn")
@onready var main = get_tree().get_root().get_node("gameplay")
@export var gameover: Label
@export var restart: Button
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var instance = char.instantiate()
	instance.gameover = gameover
	instance.restart = restart
	instance.global_position =  Vector2(404, 223)
	main.add_child.call_deferred(instance)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
