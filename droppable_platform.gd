extends StaticBody2D
@onready var tower = get_node("/root/Tower")
@onready var towerPanel = get_node("/root/Tower1Panel")
var currentTower = null

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if towerPanel.selected:
		visible = true
	else:
		visible = false
		
	if currentTower != null:
		tower.position = position
	
func dropTower(currentTower_instance):
	currentTower = currentTower_instance
