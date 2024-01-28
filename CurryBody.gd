extends CharacterBody2D

@export var enemyhealth = 500
@export var kills = 10

func _physics_process(delta):
	update_health()

func update_health():
	var enemyhealthbar = $"enemy_HealthBar"
	enemyhealthbar.value = enemyhealth

func take_damage(damage):
	
	enemyhealth -= damage
	
	if(enemyhealth<=0):
		enemyhealth = 0
		queue_free()
		update_health()
		return true
		
	update_health()
	return false
	

func get_damage():
	return enemyhealth
