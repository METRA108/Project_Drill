extends AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_A):
		play("leganim")
	else:
		play("legstop")