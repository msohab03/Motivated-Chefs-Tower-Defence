extends Node2D

var time = 0
var kills = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func increase_points(kills_add):
	self.kills += kills_add*10
	print(kills)
	
func get_kills():
	return str(kills)

func _on_menu_button_pressed():
	pass
