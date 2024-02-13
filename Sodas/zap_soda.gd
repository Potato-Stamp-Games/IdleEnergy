extends Area2D
class_name ZapSodaMoney
var money = Global.sodaMoney

#When input is mouse, when mouse button left click, when pressed
func _on_input_event(viewport, event, shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			money = money + 1
			Global.sodaMoney = money
			print("Zap Soda Clicked")
