extends Node2D
@onready var sceneToSpawn = load("res://tower.tscn");

func _on_button_pressed():

	var billy = sceneToSpawn.instantiate();
	add_child(billy);
