extends Area2D
class_name BerryBurstSoda

var BerryBurstSodaClickedSprite
var BerryBurstSodaSprite
func _ready():
	BerryBurstSodaClickedSprite = get_node("BerryBurstSodaClickedSprite")
	BerryBurstSodaSprite = get_node("BerryBurstSodaSprite")
	if Global.berryBurstSodaAuto == true:
		%BBS_AutoClickTimer.start()
#When input is mouse, when mouse button left click, when pressed 
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		BerryBurstSodaClickedSprite.hide()
		BerryBurstSodaSprite.show()
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
			Global.ttlAllClicks += 1
			Global.ttlBerryBurstSodaMoney += berryBurstSodaClickPower
			Global.ttlTrueMoney = Global.ttlTrueMoney + (berryBurstSodaClickPower * 4)
			
			BerryBurstSodaClickedSprite.show()
			BerryBurstSodaSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	BerryBurstSodaClickedSprite.hide()
	BerryBurstSodaSprite.show()


func _on_bbs_auto_click_timer_timeout():
	Global.berryBurstSodaMoney += (Global.berryBurstSodaClickPower - 1) * Global.berryBurstSodaAutoClick
	Global.ttlBerryBurstSodaMoney += (Global.berryBurstSodaClickPower - 1) * Global.berryBurstSodaAutoClick
	Global.trueMoney += (4 * (Global.berryBurstSodaClickPower - 1)) * Global.berryBurstSodaAutoClick
	Global.ttlTrueMoney += (4 * (Global.berryBurstSodaClickPower - 1)) * Global.berryBurstSodaAutoClick
