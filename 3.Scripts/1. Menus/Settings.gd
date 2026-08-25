extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Opens the Audio tab
func _on_audio_toggled(toggled_on: bool) -> void:
	if true:
		%Audio.show
	if false:
		%Audio.hide

#Opens the Graphics tab
func _on_graphics_toggled(toggled_on: bool) -> void:
	if true:
		%Graphics.show
	if false:
		%Graphics.hide


func _on_pressed() -> void:
	print("Setting_Button_Pressed")

# Volume Slider
func _on_volume_value_changed(value:):
	AudioServer.set_bus_volume_db(0,value)

# Mute Button
func _on_check_button_toggled(toggled_on: bool) -> void:
	AudioServer.set_bus_mute(0, toggled_on)

# Resolution selection
func _on_resolutions_item_selected(index: int) -> void:
	match index:
		0:
			DisplayServer.window_set_size(Vector2(1920,1080))
		1:
			DisplayServer.window_set_size(Vector2(1600,900))
		2:
			DisplayServer.window_set_size(Vector2(1280,720))
