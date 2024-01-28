extends Panel

@onready var tower = preload("res://Char1.tscn") #ENTER PATH TO TOWER SCENE HERE
var currTile #keep for a bit?
var selected = false;

func _on_gui_input(event):
	var tempTower = tower.instantiate()
	if event is InputEventMouseButton and event.button_mask == 1:
		#mouse click
		add_child(tempTower)
		tempTower.process_mode = Node.PROCESS_MODE_DISABLED
		selected = true
			
		
	elif event is InputEventMouseMotion and event.button_mask == 1:
		get_child(1).global_position = event.global_position
		#mouse moved
	elif event is InputEventMouseButton and event.button_mask == 0:
		get_child(1).queue_free()
		if get_child_count()>1:
			get_child(1).queue_free()
		#mouse click release
		if(get_tree().get_root().get_node("level_1").kills>=100):
			get_tree().get_root().get_node("level_1").kills -= 100
			var source = get_tree().get_root().get_node("level_1/Towers")
			source.add_child(tempTower)
			tempTower.global_position = event.global_position 
			#tempTower.get_node("Area").hide()
			selected = false 
		else:
			pass
		
