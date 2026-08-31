extends Control
#Preloads all needed Scenes
##Settings
const UI_SCENE = preload("res://2.Assets/Scenes/1.1 Settings.tscn")

func _ready() -> void:
	pass # Replace with function body.

#Opens Play
func _on_play_pressed() -> void:
	pass # Replace with function body.
	get_tree().change_scene_to_file("res://1.Levels/0.Gym.tscn")

#Opens Settings
func _on_settings_pressed() -> void:
	# 1. Instance the scene
	var ui_instance = UI_SCENE.instantiate()
	# 2. Add it to the tree so it displays
	add_child(ui_instance)

#Quit button
func _on_quit_pressed() -> void:
	print("Quit_Button_Pressed")
	await get_tree().create_timer(0.1).timeout
	get_tree().quit()
