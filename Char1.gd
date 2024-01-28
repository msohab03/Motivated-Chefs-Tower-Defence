extends StaticBody2D

var enemy_array = []
var enemy
var timer = 0		#Timer for doing damage
var damage = 10  	#Damage Dealt
var Reload_Time = 2 #Reload Speed = 1/Reload_Time
var x = false


func _physics_process(delta):
	if enemy_array.size()>0:
		select_enemy()
		damage_enemy(delta)
		
		turn()
	else:
		enemy = null
		
	
	
func turn():
	self.look_at(enemy.global_position)
	
func damage_enemy(delta):
	timer = timer + delta * 15
	if(timer>=Reload_Time):
		timer = 0
		x = enemy.take_damage(damage)
		if(x == true):
			get_tree().get_root().get_node("level_1").increase_points(enemy.kills)
	
func _on_range_body_entered(body):
	enemy_array.append(body)

func _on_range_body_exited(body):
	enemy_array.erase(body)
	
func select_enemy():
	enemy = enemy_array[0]
