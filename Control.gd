extends Control

@export var menuSize = 0.45
@export var menuSpeed = 0.2

var Opened = false
var topAnchor = Vector2(1-menuSize,1)
var bottomAnchor = Vector2(1,1+menuSize)
var targetAnchor = bottomAnchor

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	anchor_top = lerp(anchor_top,targetAnchor.x,menuSpeed)
	anchor_bottom = lerp(anchor_bottom,targetAnchor.y,menuSpeed)



func _on_texture_button_pressed():
	if Opened:
		targetAnchor = bottomAnchor
		Opened = false
	else:
		targetAnchor = topAnchor
		Opened = true
