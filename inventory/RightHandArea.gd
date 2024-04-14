extends Area2D

@export var inv: Inv
func _ready():
	pass
	
func _process(delta):
	pass

func collect(item):
	inv.insert(item)

func pickableR():
	print("pickR")
