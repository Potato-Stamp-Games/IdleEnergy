extends Area2D
class_name BerryBurstSoda

var BerryBurstSodaClickedSprite
var BerryBurstSodaSprite
#Number Variables
var trueMoney 
var berryBurstSodaMoney 
var berryBurstSodaClickPower 
var newAge = Global.newAge
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
			$BerryBurstSodaSFX.play()
			
			#Creates values based on most recent in global.gd
			newAge = Global.newAge
			trueMoney = Global.trueMoney
			berryBurstSodaMoney = Global.berryBurstSodaMoney
			berryBurstSodaClickPower = Global.berryBurstSodaClickPower
			
			#Calculates the new value based on click power
			berryBurstSodaMoney = berryBurstSodaMoney + berryBurstSodaClickPower + (newAge * 1.5)#A
			trueMoney = trueMoney + (berryBurstSodaClickPower * 4)#B
			
			#Sets the new value for each money type
			Global.berryBurstSodaMoney = berryBurstSodaMoney
			Global.trueMoney = trueMoney
			Global.godlySodaMoney += Global.godlyFavor
			#Sets new stat values
			Global.ttlBerryBurstSodaMoney += berryBurstSodaClickPower + (newAge * 1.5)#A
			Global.ttlTrueMoney = Global.ttlTrueMoney + (berryBurstSodaClickPower * 4)#B
			Global.ttlAllClicks += 1
			
			
			BerryBurstSodaClickedSprite.show()
			BerryBurstSodaSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	BerryBurstSodaClickedSprite.hide()
	BerryBurstSodaSprite.show()


func _on_bbs_auto_click_timer_timeout():
	#Creates values based on most recent in global.gd
	var berryBurstSodaAutoClick = Global.berryBurstSodaAutoClick
	newAge = Global.newAge
	trueMoney = Global.trueMoney
	berryBurstSodaMoney = Global.berryBurstSodaMoney
	berryBurstSodaClickPower = Global.berryBurstSodaClickPower
	#Sets the new value for each money type
	Global.berryBurstSodaMoney += ((berryBurstSodaClickPower - 1) * berryBurstSodaAutoClick) + (newAge * 1.5) #A
	Global.trueMoney += (berryBurstSodaClickPower - 1) * berryBurstSodaAutoClick #B
	Global.godlySodaMoney += Global.godlyFavor
	#Sets new stat values
	Global.ttlBerryBurstSodaMoney += ((berryBurstSodaClickPower - 1) * berryBurstSodaAutoClick) + (newAge * 1.5) #A
	Global.ttlTrueMoney += (berryBurstSodaClickPower - 1) * berryBurstSodaAutoClick#B
