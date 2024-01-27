extends CharacterBody2D

@export var enemyhealth = 100

func _physics_process(delta):
	update_health()

func update_health():
	
	var enemyhealthbar = $"enemy_HealthBar"
	enemyhealthbar.value = enemyhealth
