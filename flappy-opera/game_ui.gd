extends CanvasLayer
@export var pause: Button
@export var resume: Button
@export var lab: Label



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().paused = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_exit_pressed() -> void:
	#get_tree().reload_current_scene()
	get_tree().change_scene_to_file("res://menu.tscn")
	pass


func _on_pause_pressed() -> void:
	get_tree().paused = true
	resume.visible = true
	pause.visible  = false
	lab.text = "pause"
	lab.visible  = true
	pass # Replace with function body.


func _on_resume_pressed() -> void:
	get_tree().paused = false
	resume.visible = false
	pause.visible  = true
	lab.visible  = false
	pass # Replace with function body.
