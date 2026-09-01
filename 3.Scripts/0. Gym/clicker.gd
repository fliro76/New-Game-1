class_name Clicker
extends Control

# Used for keep track of click number
@export var Clicks : Label

var clicks : int = 0

func _ready() -> void:
	update_clicks_label()

#Function for clicking on Button
func _on_button_pressed() -> void:
	create_click()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func create_click() -> void:
	clicks += 1
	update_clicks_label()

func update_clicks_label() -> void:
	Clicks.text = "Clicks : %s" %clicks 
