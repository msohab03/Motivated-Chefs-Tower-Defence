extends Button

var sceneToSpawn = preload("res://tower.tscn");

func _on_button_pressed():
	
	var billy = sceneToSpawn.instance()
	get_node("/root/world_1").add_child(billy)
