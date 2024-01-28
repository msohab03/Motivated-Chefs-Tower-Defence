extends PathFollow2D

@export var runSpeed = 5000
@export var damage = 25

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_progress(get_progress() + runSpeed * delta)
	
	if(loop == false && get_progress_ratio() == 1):
		queue_free()


