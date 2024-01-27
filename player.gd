extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	move_and_slide()



func _input(event):
	if event.is_action_pressed("ui_right"):
		velocity = Vector2(300,0)
	elif event.is_action_pressed("ui_left"):
		velocity = Vector2(-300,0)
	elif event.is_action_pressed("ui_up"):
		velocity = Vector2(0,-300)
	elif event.is_action_pressed("ui_down"):
		velocity = Vector2(0,300)
