extends CharacterBody2D

@export var enemyhealth = 100

func _physics_process(delta):
	update_health()

func update_health():
	var enemyhealthbar = $"enemy_HealthBar"
	enemyhealthbar.value = enemyhealth

# Bullet properties
var speed = 300   # Speed of the bullet
var damage = 10  # Damage dealt to the target

# Target information
var target : Node2D = null

# Function to set the target for the bullet
func set_target(target_node: Node2D):
	target = target_node

# Function to handle bullet movement
func _process(delta):
	if target:
		# Calculate the direction vector towards the target
		var direction = (target.global_position - global_position).normalized()

		# Move the bullet towards the target
		move_and_collide(direction * speed * delta)

# Function to handle collisions
func _on_Bullet_body_entered(body):
	# Check if the collided object is the target
	if body == target:
		# Apply damage to the target
		if body.has_method("take_damage"):
			body.take_damage(damage)

		# Remove the bullet from the scene
		queue_free()
		
func take_damage():
	enemyhealth -= 10
	if(enemyhealth<0):
		enemyhealth = 0
		queue_free()
	update_health()
	
# Function to set the bullet's initial position and rotation
func start(position, rotation):
	global_position = position
	global_rotation = rotation
	
func get_damage():
	return damage

