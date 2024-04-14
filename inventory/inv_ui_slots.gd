extends Panel

@onready var itemVisual: Sprite2D = $CenterContainer/Panel/ItemDisplay
@onready var amount_text: Label = $CenterContainer/Panel/Label

func update(slot: Inv_Slot):
	if !slot.item:
		itemVisual.visible = false
		amount_text.visible = false
	else:
		itemVisual.visible = true
		itemVisual.texture = slot.item.texture
		if slot.amount > 1:
			amount_text.visible = true
		amount_text.text = str(slot.amount)



func _on_mouse_entered():
	pass # Replace with function body.
