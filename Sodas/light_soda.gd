extends Area2D
class_name SodaLight

#When input is mouse, when mouse button left click, when pressed 
func _on_input_event(viewport, event, shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var trueMoney = Global.trueMoney
			var lightSodaMoney = Global.lightSodaMoney
			var lightSodaClickPower = Global.lightSodaClickPower

			lightSodaMoney = lightSodaMoney + lightSodaClickPower
			trueMoney = trueMoney + lightSodaClickPower
			Global.lightSodaMoney = lightSodaMoney
			Global.trueMoney = trueMoney
			print("Light Soda Clicked")
