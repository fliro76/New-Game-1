extends Control

const UI_SCENE = preload("res://2.Assets/Scenes/1.1 Settings.tscn")

func _on_settings_pressed() -> void:
	# 1. Instance the scene
	var ui_instance = UI_SCENE.instantiate()
	
	# 2. Add it to the tree so it displays
	add_child(ui_instance)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
