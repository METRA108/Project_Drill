extends Sprite2D
const idle = preload("res://sprites/idle_eye.png")
const green = preload("res://sprites/green.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("ui_text_completion_accept"):
		get_node("/root/Node2D/CharacterBody2D/Eye").set_texture(idle)
		
	if Input.is_action_just_released("ui_text_completion_accept"):
		get_node("/root/Node2D/CharacterBody2D/Eye").set_texture(green)
	
		

