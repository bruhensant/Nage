extends Label

func _on_Nome_gui_input(event):
	if (event is InputEventMouseButton && event.pressed && event.button_index == 1):
		queue_free()

func _ready():
	pass
