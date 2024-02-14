extends Area2D
class_name BerryBurstSoda

#When input is mouse, when mouse button left click, when pressed 
func _on_input_event(viewport, event, shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#Creates values based on most recent in global.gd
			var trueMoney = Global.trueMoney
			var berryMoney = Global.berryBurstSodaMoney
			var berryBurstSodaClickPower = Global.berryBurstSodaClickPower
			
			#Calculates the new value based on click power
			berryMoney = berryMoney + berryBurstSodaClickPower
			trueMoney = trueMoney + (berryBurstSodaClickPower * 4)
			
			#Sets the new value for each money type
			Global.berryBurstSodaMoney = berryMoney
			Global.trueMoney = trueMoney
			print("Berry Burst Soda Clicked")
