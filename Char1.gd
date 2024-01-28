extends StaticBody2D

var enemy_array = []
var enemy
var times = 10

func _physics_process(delta):
	
	if enemy_array.size()>0:
		select_enemy()
		turn()
	else:
		enemy = null
	
	
func turn():
	self.look_at(enemy.global_position)

func _on_range_body_entered(body):
	enemy_array.append(body)

func _on_range_body_exited(body):
	enemy_array.erase(body)
	
func select_enemy():
	enemy = enemy_array[0]
