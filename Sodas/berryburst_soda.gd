extends Area2D
class_name BerryBurstSoda

#When input is mouse, when mouse button left click, when pressed 
func _on_input_event(viewport, event, shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var trueMoney = Global.trueMoney
			var berryMoney = Global.berryBurstSodaMoney
			var berryBurstSodaClickPower = Global.berryBurstSodaClickPower
			
			berryMoney = berryMoney + berryBurstSodaClickPower
			trueMoney = trueMoney + (berryBurstSodaClickPower * 4)
			Global.berryBurstSodaMoney = berryMoney
			Global.trueMoney = trueMoney
			print("Berry Burst Soda Clicked")
