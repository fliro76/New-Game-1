extends Control
#Preloads all needed Scenes
##Settings
const UI_SCENE = preload("res://2.Assets/Scenes/1.1 Settings.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _process(_delta):
#Settings
	if Input.is_action_just_pressed("Pause"):
			# 1. Instance the scene
		var ui_instance = UI_SCENE.instantiate()
	# 2. Add it to the tree so it displays
		add_child(ui_instance)
