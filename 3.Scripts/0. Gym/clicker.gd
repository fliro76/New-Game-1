class_name Clicker
extends Control

# Used for keep track of click number
@export var Clicks : Label
@export var Click_Noise : AudioStreamPlayer
@export var Upgrade1 : Button
@export var Upgrade1Visual : Sprite2D
@export var Upgrade1Inv : Label
@export var Upgrade2 : Button
@export var Currentclickpower : Label

#Game data variable
var clicks : int = 0
var clickpower: int = 1

#Upgrades Variable
var upgrade_cost: int = 1
var upgrade_cost_multiplier: float = 2 # Scales the price exponentially
var upgrade1_count: int = 0
var upgrade2_cost: int = 1
var upgrade2_cost_multiplier: float = 2 # Scales the price exponentially


func _ready() -> void:
	update_clicks_label()

#Function for clicking on Button
func _on_button_pressed() -> void:
	create_click()
	Click_Noise.playing = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func create_click() -> void:
	clicks += clickpower
	update_clicks_label()

func update_clicks_label() -> void:
#header
	Clicks.text = "Clicks : %s" %clicks 
	Currentclickpower.text = "ClickPower : %s" %clickpower
#Upgrade 1
	Upgrade1.text = "Hay; Cost : %s" %upgrade_cost
	Upgrade1.tooltip_text = "Gives +1 click power."
	Upgrade1Inv.text = "Hay: %s" %upgrade1_count
#Upgrade 2
	if upgrade1_count >= 5:
		Upgrade2.show()
	else:
		pass 
	Upgrade2.text = " Hay, Cost : %s" %upgrade2_cost
	Upgrade2.tooltip_text = "Gives 2x current click power."
#Upgrade 3
	#Upgrade3.text = " Hay, Cost : %s" %upgrade2_cost
	#Upgrade3.tooltip_text = "Gives current click power every 10 seconds."
#Upgrade 4
	#Upgrade4.text = " Hay, Cost : %s" %upgrade2_cost
	#Upgrade4.tooltip_text = "Gives 2x current click power."
#Upgrade 5
	#Upgrade5.text = " Hay, Cost : %s" %upgrade2_cost
	#Upgrade5.tooltip_text = "Gives cool wheel to the horse. Nothing else... or maybe there is something, who knows"
#Upgrade 6
	#Upgrade6.text = " Hay, Cost : %s" %upgrade2_cost
	#Upgrade6.tooltip_text = "Gives the ultimate evolution to the ho."

func _on_upgrade_1_pressed() -> void:
	if clicks >=upgrade_cost:
		clicks -= upgrade_cost
		clickpower += 1
		upgrade1_count +=1
		upgrade_cost = int(upgrade_cost * upgrade_cost_multiplier)
		update_clicks_label()
		Upgrade1Visual.show()
	else:
		pass

func _on_upgrade_2_pressed() -> void:
	if clicks >=upgrade2_cost:
		clicks -= upgrade2_cost
		clickpower *= 2
		upgrade2_cost = int(upgrade2_cost * upgrade_cost_multiplier)
		update_clicks_label()
	else:
		pass
