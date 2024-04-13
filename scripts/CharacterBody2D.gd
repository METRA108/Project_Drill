extends CharacterBody2D

const SPEED = 150.0


@export var inv: Inv

	
func _process(_delta):
	
	var direction = Input.get_axis("ui_left", "ui_right")
	var direction2 = Input.get_axis("ui_up", "ui_down")
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if direction2:
		velocity.y = direction2 * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
	
func collect(item):
	inv.insert(item)

