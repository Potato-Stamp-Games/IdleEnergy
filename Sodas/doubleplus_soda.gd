extends Area2D

class_name LightSodaMoney
var money = Global.doublePlusSodaMoney

#When input is mouse, when mouse button left click, when pressed
func _on_input_event(viewport, event, shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			money = money + 1
			Global.doublePlusSodaMoney = money
			print("Double Plus Soda Clicked")
