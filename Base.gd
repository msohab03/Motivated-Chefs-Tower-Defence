extends RigidBody2D

@export var Health = 100
var timer = 0
var Regen_time = 3
# Called when the node enters the scene tree for the first time.
func _ready():
	update_health()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer += delta
	if(timer>=Regen_time):
		timer = 0
		if(Health<100):
			Health += 5
			update_health()


func _on_base_body_entered(body):
	Health -= body.get_damage()/2
	update_health()
	
func update_health():
	if (Health <= 0):
		Health = 0
		get_tree().change_scene_to_file("res://end_screen.tscn")
	$Base_HealthBar.value = Health
