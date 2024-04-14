extends Area2D
@export var item = InvItem
var player = null
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_area_entered(area):
		if area.has_method("pickableR"):
			collided(area)
		await get_tree().create_timer(0.01).timeout
		if area.has_method("pickableL"):
			collided(area)

	
func collided(area):
		self.queue_free()
		player = area
		player.collect(item)
	
