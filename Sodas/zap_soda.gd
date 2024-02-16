extends Area2D
class_name ZapSodaMoney

#When input is mouse, when mouse button left click, when pressed
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#Creates values based on most recent in global.gd
			var trueMoney = Global.trueMoney
			var zapSodaMoney = Global.zapSodaMoney
			var ZapSodaClickPower = Global.zapSodaClickPower
			
			#Calculates the new value based on click power
			zapSodaMoney = zapSodaMoney + ZapSodaClickPower
			trueMoney = trueMoney + (ZapSodaClickPower * 2)
			
			#Sets the new value for each money type
			Global.trueMoney = trueMoney
			Global.zapSodaMoney = zapSodaMoney
			print("Zap Soda Clicked")
