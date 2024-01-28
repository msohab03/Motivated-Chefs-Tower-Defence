extends Node2D

var selected = false;
var original_position = Vector2.ZERO

func _ready():
	original_position = position

func _process(delta):
	if selected:
		followMouse();
			
func followMouse():
	position = get_global_mouse_position()

func _physics_process(delta):
	turn()

func turn():
	var enemyPositon = get_global_mouse_position()
	self.look_at(enemyPositon)


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:  # if mouse button down
			scale = Vector2(0.8, 0.8)
			selected = true 
		else:
			scale = Vector2(0.5, 0.5)
			selected = false # if mouse button released
			checkDrop()

func checkDrop():
	var area2d = get_node("Area2D")
	var bodies = area2d.get_overlapping_bodies()
	var foundDroppable = false
	for body in bodies:
		if body.is_in_group("droppable"):
			body.dropTower(self)
			foundDroppable = true
			return
	if not foundDroppable:
		position = original_position
