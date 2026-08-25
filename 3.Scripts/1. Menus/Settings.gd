extends Node

func _ready() -> void:
	# 1. Get a reference to the parent node
	var parent_button = get_parent()
	
	# 2. Check if the parent is actually a Button and connect its signal
	if parent_button is Button:
		parent_button.pressed.connect(_on_parent_pressed)

# 3. This function runs automatically whenever the parent button is pressed
func _on_parent_pressed() -> void:
	print("The parent button was pressed!")
	


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

# Signal to tell the parent menu that settings are closed
signal closed
func _on_exit_pressed() -> void:
	emit_signal("closed")
	queue_free() # Destroys the settings menu to clean up memory
