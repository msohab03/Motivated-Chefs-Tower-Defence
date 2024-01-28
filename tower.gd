extends Node2D

var selected = false;

func _process(delta):
	if selected:
		followMouse();
			
func followMouse():
	position = get_global_mouse_position();

func _physics_process(delta):
	turn()

func turn():
	var enemyPositon = get_global_mouse_position();
	get_node("Billy").look_at(enemyPositon);


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:  # if mouse button down
			scale = Vector2(1.10, 1.10)
			selected = true 
		else:
			selected = false # if mouse button released
