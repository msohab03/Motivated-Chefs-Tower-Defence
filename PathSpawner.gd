extends Path2D

var timer = 0
@export var spawnTime = 3
@export var charLimit = 5
var enemy = preload("res://Enemy.tscn")
var deltaLimit = charLimit - 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer = timer + delta
	
	if (timer > spawnTime && deltaLimit > 0):
		deltaLimit = deltaLimit - 1
		var temp = 100
		var newEnemy = enemy.instantiate()
		add_child(newEnemy)
		timer = 0
