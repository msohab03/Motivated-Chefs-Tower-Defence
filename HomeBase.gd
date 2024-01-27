extends StaticBody2D

var health = 100

func update_health():
	
	var healthbar = $healthbar
	healthbar.value = health
	
	if (health >= 100):
		healthbar.visible = false
	else:
		healthbar.visible = true

func _on_regin_timer_timeout():
	if health < 100:
		health = health + 1
	if health <= 0:
		health = 0
