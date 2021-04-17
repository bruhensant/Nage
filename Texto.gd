extends Label

func _input(_event):
	if Input.is_action_pressed("ui_accept"):
		queue_free()

func _ready():
	pass
