extends Area2D
@export var item = InvItem
var player = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_entered(area):
	if area.has_method("pickable"):
		player = area
		player.collect(item)
		self.queue_free()

