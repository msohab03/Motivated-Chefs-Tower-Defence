extends Node2D

var tower = preload("res://tower.tscn")

func _on_button_pressed():
	var newTower = tower.instantiate()
	add_child(newTower);
