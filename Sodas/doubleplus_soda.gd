extends Area2D
class_name LightSodaMoney

#When input is mouse, when mouse button left click, when pressed
func _on_input_event(viewport, event, shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var trueMoney = Global.trueMoney
			var doublePlusSodaMoney = Global.doublePlusSodaMoney
			var doublePlusSodaClickPower = Global.doublePlusSodaClickPower
			
			doublePlusSodaMoney = doublePlusSodaMoney + doublePlusSodaClickPower
			trueMoney = trueMoney + (doublePlusSodaClickPower * 3)
			Global.doublePlusSodaMoney = doublePlusSodaMoney
			Global.trueMoney = trueMoney
			print("Double Plus Soda Clicked")
