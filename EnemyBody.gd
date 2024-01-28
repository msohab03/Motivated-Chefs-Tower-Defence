extends CharacterBody2D

@export var enemyhealth = 100
@export var kills = 1
const bulletPath = preload("res://Bullet.tscn")

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
