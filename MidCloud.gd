extends Sprite2D
#parallax
func _process(delta):
	position += (get_global_mouse_position()/2*delta*2)-position
