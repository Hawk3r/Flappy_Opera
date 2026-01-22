extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().paused = false
	pass # Replace with function body.



	
func _on_start_pressed() -> void:
	#get_tree().reload_scene("res://game.tscn")
	get_tree().change_scene_to_file("res://game.tscn")
	pass # Replace with function body.
	





func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
