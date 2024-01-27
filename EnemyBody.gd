extends CharacterBody2D

@export var health = 100

func update_health():
	
	var healthbar = $healthbar
	healthbar.value = health
	
	if (health >= 100):
		healthbar.visible = false
	else:
		healthbar.visible = true
