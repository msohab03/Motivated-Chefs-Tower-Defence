extends Path2D

var timer1 = 0
var timer2 = 3
var timer3 = 2

@export var spawnTime1 = 5
@export var spawnTime2 = 10
@export var spawnTime3 = 15
@export var charLimit1 = 500
@export var charLimit2 = 100
@export var charLimit3 = 50


var enemy = preload("res://Baguette.tscn")
var enemy2 = preload("res://Cookie.tscn")
var enemy3 = preload("res://Curry.tscn")
var deltaLimit1 = charLimit1 - 1
var deltaLimit2 = charLimit2 - 1
var deltaLimit3 = charLimit3 - 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	timer1 += delta
	timer2 += delta
	timer3 += delta
	
	if (timer1 > spawnTime1 && deltaLimit1 > 0):
		deltaLimit1 = deltaLimit1 - 1
		var newEnemy = enemy.instantiate()
		newEnemy.set_rotates(false)
		add_child(newEnemy)
		timer1 = 0
		spawnTime1 -= delta/10
		
		
	elif (timer2 > spawnTime2 && deltaLimit2 > 0):
		deltaLimit2 = deltaLimit2 - 1
		var newEnemy = enemy2.instantiate()
		newEnemy.set_rotates(false)
		add_child(newEnemy)
		timer2 = 0
		spawnTime2 -= delta/25
		
		
	elif (timer3 > spawnTime3 && deltaLimit3 > 0):
		deltaLimit3 = deltaLimit3 - 1
		var newEnemy = enemy3.instantiate()
		newEnemy.set_rotates(false)
		add_child(newEnemy)
		timer3 = 0
		spawnTime3 -= delta/50
