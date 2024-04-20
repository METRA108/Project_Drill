extends CharacterBody2D

const StateRight = preload("res://sprites/RobotRight.png")
const StateLeft = preload("res://sprites/RobotLeft.png")
const StateFront = preload("res://sprites/robot.png")
const StateBack = preload("res://sprites/RobotBack.png")

const SPEED = 150.0

@export var inv: Inv
	
func _process(_delta):
	var xx = get_global_mouse_position().x
	var yy = get_global_mouse_position().y
	
	var xminus = xx - position.x
	var yminus = yy - position.y
	
	var direction = Input.get_axis("ui_left", "ui_right")
	var direction2 = Input.get_axis("ui_up", "ui_down")
	
	var vect = rad_to_deg(atan2(xminus, yminus))
	
	print(vect)
	
	if (vect < 55) and (vect > -55):
		get_node("Body").set_texture(StateFront)
		$Eye.set_position(Vector2(0, 0))
		
	if (vect > 55) and (vect < 125):
		get_node("Body").set_texture(StateRight)
		$Eye.set_position(Vector2(6, 0))
		
	if (vect < -125) or (vect > 125):
		get_node("Body").set_texture(StateBack)
		$Eye.visible = false
	else:
		$Eye.visible = true
		
	if (vect < -55) and (vect > -125):
		get_node("Body").set_texture(StateLeft)
		$Eye.set_position(Vector2(-6, 0))
		
		
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if direction2:
		velocity.y = direction2 * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
