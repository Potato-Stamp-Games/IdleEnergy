extends Area2D


# Called when the node enters the scene tree for the first time.
func _input(event):
	if event is InputEventMouseButton:
		print(event.position)


