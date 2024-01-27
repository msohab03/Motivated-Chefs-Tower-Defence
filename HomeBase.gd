extends StaticBody2D

@export var base_health = 100

func _process(delta):
	update_health()

func update_health():
	
	var BASEhealthbar = $"Base_HealthBar"
	BASEhealthbar.value = base_health
	
	if (base_health >= 100):
		BASEhealthbar.visible = false
	else:
		BASEhealthbar.visible = true
		
#
#func _on_regin_timer_timeout():
#	if health < 100:
#		health = health + 50
#		if (health > 100):
#			health = 100
#	if health <= 0:
#		health = 0
#
