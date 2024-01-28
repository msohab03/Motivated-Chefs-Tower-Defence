extends Path2D

var timer = 0
var timer1 = 1
var timer2 = 2

@export var spawnTime = 4
@export var charLimit = 100

var enemy = preload("res://Enemy.tscn")
var enemy2 = preload("res://Enemy.tscn")
$"Enemy/EnemyBody/EnemyLooks".texture = load("res://food/10_baguette_dish.png")
var enemy3 = preload("res://Enemy.tscn")
var deltaLimit = charLimit - 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer += delta
	timer1 += delta * 2
	timer2 += delta * 5
	
	if (timer > spawnTime && deltaLimit > 0):
		deltaLimit = deltaLimit - 1
		var newEnemy = enemy.instantiate()
		newEnemy.set_rotates(false)
		add_child(newEnemy)
		timer = 0
		
	if (timer1 > spawnTime && deltaLimit > 0):
		deltaLimit = deltaLimit - 1
		var newEnemy = enemy.instantiate()
		newEnemy.set_rotates(false)
		add_child(newEnemy)
		timer1 = 0
		
	if (timer2 > spawnTime && deltaLimit > 0):
		deltaLimit = deltaLimit - 1
		var newEnemy = enemy.instantiate()
		newEnemy.set_rotates(false)
		add_child(newEnemy)
		timer2 = 0
