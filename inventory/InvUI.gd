extends Control

@onready var inv: Inv = preload("res://inventory/InventoryPlayer.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()
var isOpen = false

func _ready():
	inv.update.connect(updateSlots)
	updateSlots()
	close()
	
func updateSlots():
	for i in range(min(inv.slots.size(), slots.size())):
		slots[i].update(inv.slots[i])
	
func _process(delta):
	if Input.is_action_just_pressed("i"):
		if isOpen:
			close()
		else:
			open()
			
func open():
	self.visible = true
	isOpen = true
	
func close():
	visible = false
	isOpen = false
