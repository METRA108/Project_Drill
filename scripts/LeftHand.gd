extends Sprite2D
const on = preload("res://sprites/arm_clicked.png")
const off = preload("res://sprites/arm.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		get_node("/root/Node2D/CharacterBody/LeftArmSkeleton/Torso/LeftArmBone/LeftHandBone/LeftHand").set_texture(on)
		
	else:
		get_node("/root/Node2D/CharacterBody/LeftArmSkeleton/Torso/LeftArmBone/LeftHandBone/LeftHand").set_texture(off)
