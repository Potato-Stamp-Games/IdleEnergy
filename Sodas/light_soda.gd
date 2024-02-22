extends Area2D
class_name SodaLight

#Node variables
var SodaLightClickedSprite
var SodaLightSprite
#Number Variables
var trueMoney 
var lightSodaMoney 
var lightSodaClickPower 
var newAge = Global.newAge

func _ready():
	SodaLightClickedSprite = get_node("SodaLightClickedSprite")
	SodaLightSprite = get_node("SodaLightSprite")
	if Global.lightSodaAuto == true:
		%LS_AutoClickTimer.start()
		print(Global.lightSodaAuto)
#When input is mouse, when mouse button left click, when pressed 
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		SodaLightClickedSprite.hide()
		SodaLightSprite.show()
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#Creates values based on most recent in global.gd
			newAge = Global.newAge
			trueMoney = Global.trueMoney
			lightSodaMoney = Global.lightSodaMoney
			lightSodaClickPower = Global.lightSodaClickPower

			#Calculates the new value based on click power
			lightSodaMoney += lightSodaClickPower + (newAge * 1.5)#A
			trueMoney += lightSodaClickPower#B
			
			#Sets the new value for each money type
			Global.lightSodaMoney = lightSodaMoney
			Global.trueMoney = trueMoney
			Global.godlySodaMoney += Global.godlyFavor
			#Sets new stat values
			Global.ttlLightSodaMoney += lightSodaClickPower + (newAge * 1.5)#A
			Global.ttlTrueMoney += lightSodaClickPower#B
			Global.ttlAllClicks += 1
			
			SodaLightClickedSprite.show()
			SodaLightSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	SodaLightClickedSprite.hide()
	SodaLightSprite.show()

#Auto click once per second with power equal auto click power and click power 1
func _on_ls_auto_click_timer_timeout():
	#Creates values based on most recent in global.gd
	var lightSodaAutoClick = Global.lightSodaAutoClick
	#Creates values based on most recent in global.gd
	newAge = Global.newAge
	trueMoney = Global.trueMoney
	lightSodaMoney = Global.lightSodaMoney
	lightSodaClickPower = Global.lightSodaClickPower
	#Sets the new value for each money type
	Global.lightSodaMoney += ((lightSodaClickPower - 1) * lightSodaAutoClick) + (newAge * 1.5) #A
	Global.trueMoney += (lightSodaClickPower - 1) * lightSodaAutoClick #B
	Global.godlySodaMoney += Global.godlyFavor
	#Sets new stat values
	Global.ttlLightSodaMoney += ((lightSodaClickPower - 1) * lightSodaAutoClick) + (newAge * 1.5) #A
	Global.ttlTrueMoney += (lightSodaClickPower - 1) * lightSodaAutoClick#B

