extends RigidBody2D

@export var Health = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	update_health()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_base_body_entered(body):
	Health -= body.get_damage()
	update_health()
	
func update_health():
	if (Health <= 0):
		Health = 0
	$Base_HealthBar.value = Health
