extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_pressed() -> void:
	print("Quit_Button_Pressed")
	await get_tree().create_timer(0.1).timeout
	get_tree().quit()
