extends Node2D
var score = 0
@onready var  char1= load("res://OperaO.tscn")
@onready var  char2= load("res://Doto.tscn")
@onready var main = get_tree().get_root().get_node("gameplay")
@export var gameover: Label
@export var restart: Button

func _ready() -> void:
	var instance = char1.instantiate()
	if CharSelect.char ==0:
		instance = char1.instantiate()
	else: 
		instance = char2.instantiate()
	instance.gameover = gameover
	instance.restart = restart
	instance.global_position =  Vector2(404, 223)
	main.add_child.call_deferred(instance)
	pass 


func _process(delta: float) -> void:
	pass
