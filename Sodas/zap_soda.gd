extends Area2D
class_name ZapSoda
#Node Variables
var ZapSodaClickedSprite
var ZapSodaSprite
#Number Variables
var trueMoney 
var zapSodaMoney 
var zapSodaClickPower 
var newAge = Global.newAge
func _ready():
	ZapSodaClickedSprite = get_node("ZapSodaClickedSprite")
	ZapSodaSprite = get_node("ZapSodaSprite")
	if Global.zapSodaAuto == true:
		%ZS_AutoClickTimer.start()

#When input is mouse, when mouse button left click, when pressed
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		ZapSodaClickedSprite.hide()
		ZapSodaSprite.show()
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#Creates values based on most recent in global.gd
			newAge = Global.newAge
			trueMoney = Global.trueMoney
			zapSodaMoney = Global.zapSodaMoney
			zapSodaClickPower = Global.zapSodaClickPower
			
			#Calculates the new value based on click power
			zapSodaMoney += zapSodaClickPower + (newAge * 1.5)
			trueMoney = trueMoney + 2*(zapSodaClickPower)
			
			#Sets the new value for each money type
			Global.trueMoney = trueMoney
			Global.zapSodaMoney = zapSodaMoney
			Global.godlySodaMoney += Global.godlyFavor
			#Sets new stat values
			Global.ttlZapSodaMoney += zapSodaClickPower + (newAge * 1.5)
			Global.ttlTrueMoney = Global.ttlTrueMoney + (zapSodaClickPower * 2)
			Global.ttlAllClicks += 1

			
			ZapSodaClickedSprite.show()
			ZapSodaSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	ZapSodaClickedSprite.hide()
	ZapSodaSprite.show()


func _on_zs_auto_click_timer_timeout():
	#Creates values based on most recent in global.gd
	var zapSodaAutoClick = Global.zapSodaAutoClick
	newAge = Global.newAge
	trueMoney = Global.trueMoney
	zapSodaMoney = Global.zapSodaMoney
	zapSodaClickPower = Global.zapSodaClickPower
	#Sets the new value for each money type
	Global.zapSodaMoney += ((zapSodaClickPower - 1) * zapSodaAutoClick) + (newAge * 1.5) #A
	Global.trueMoney += (zapSodaClickPower - 1) * zapSodaAutoClick #B
	Global.godlySodaMoney += Global.godlyFavor
	#Sets new stat values
	Global.ttlZapSodaMoney += ((zapSodaClickPower - 1) * zapSodaAutoClick) + (newAge * 1.5) #A
	Global.ttlTrueMoney += (zapSodaClickPower - 1) * zapSodaAutoClick#B
