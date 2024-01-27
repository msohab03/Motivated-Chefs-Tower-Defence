extends Node2D

var enemy_array = []
var enemy

func _physics_process(delta):
	if enemy_array.size()!=0:
		select_enemy()
		turn()
	else:
		enemy = null
	
	
func turn():
	get_node("BlueOval").look_at(enemy.position)


func _on_range_body_entered(body):
	enemy_array.append(body)

func select_enemy():
	var enemy_progress_array = []
	for i in enemy_array:
		enemy = enemy_array[0]


func _on_range_body_exited(body):
	enemy_array.erase(body)
