extends AnimatedSprite2D
var new_texture = preload("res://sprites/RobotLegStop.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_key_pressed(KEY_W) or Input.is_key_pressed(KEY_S) or Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_D):
		play("legfrontalanim")
	else:
		stop()
