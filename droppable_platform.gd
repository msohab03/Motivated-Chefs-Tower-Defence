extends StaticBody2D
@onready var tower = get_node("/root/Tower")
var currentTower = null

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if tower.selected:
		visible = true
	else:
		visible = false
		
	if currentTower != null:
		tower.position = position
	
func dropTower(currentTower_instance):
	currentTower = currentTower_instance
