extends Area2D

@export var inv: Inv
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func collect(item):
	inv.insert(item)

func pickable():
	print("pick")
