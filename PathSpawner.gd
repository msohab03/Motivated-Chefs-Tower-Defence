extends Path2D

var timer = 0

@export var spawnTime = 1
@export var charLimit = 100

var enemy = preload("res://Enemy.tscn")
var deltaLimit = charLimit - 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer = timer + delta
	
	if (timer > spawnTime && deltaLimit > 0):
		deltaLimit = deltaLimit - 1
		var newEnemy = enemy.instantiate()
		newEnemy.set_rotates(false)
		add_child(newEnemy)
		timer = 0
