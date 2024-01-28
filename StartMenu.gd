extends Node2D

#start button pressed changes scene
func _on_start_pressed():
	get_tree().change_scene_to_file("res://level_1.tscn")

#pressing quit button exits the game
func _on_quit_pressed():
	get_tree().quit()
