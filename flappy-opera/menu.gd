extends Node2D
@export var main: CanvasLayer
@export var credits: CanvasLayer
@export var charSel: CanvasLayer
@export var selector: Label
signal char1
signal char2
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


func _on_credits_pressed() -> void:
	main.visible = false
	credits.visible = true
	pass # Replace with function body.


func _on_creturn_pressed() -> void:
	main.visible = true
	credits.visible = false
	pass # Replace with function body.


func _on_char_return_pressed() -> void:
	main.visible = true
	charSel.visible = false
	pass # Replace with function body.


func _on_doto_pressed() -> void:
	selector.text = "Meisho Doto selected"
	CharSelect.char= 1
	main.visible = true
	charSel.visible = false
	pass # Replace with function body.


func _on_opera_pressed() -> void:
	selector.text = "TM Opera O selected"
	CharSelect.char= 0
	main.visible = true
	charSel.visible = false
	pass # Replace with function body.


func _on_char_pressed() -> void:
	main.visible = false
	charSel.visible = true
	pass # Replace with function body.
