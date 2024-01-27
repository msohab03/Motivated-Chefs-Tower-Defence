extends Button

func _on_button_pressed():
	var sceneToSpawn = load("res://tower.tscn");
	var billy = sceneToSpawn.instance();
	add_child(billy);
