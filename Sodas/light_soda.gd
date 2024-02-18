extends Area2D
class_name SodaLight

var SodaLightClickedSprite
var SodaLightSprite

func _ready():
	SodaLightClickedSprite = get_node("SodaLightClickedSprite")
	SodaLightSprite = get_node("SodaLightSprite")
	if Global.lightSodaAuto == true:
		%LS_AutoClickTimer.start()
#When input is mouse, when mouse button left click, when pressed 
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		SodaLightClickedSprite.hide()
		SodaLightSprite.show()
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#Creates values based on most recent in global.gd
			var trueMoney = Global.trueMoney
			var lightSodaMoney = Global.lightSodaMoney
			var lightSodaClickPower = Global.lightSodaClickPower

			#Calculates the new value based on click power
			lightSodaMoney += lightSodaClickPower
			trueMoney += lightSodaClickPower
			
			#Sets the new value for each money type
			Global.lightSodaMoney = lightSodaMoney
			Global.trueMoney = trueMoney
			Global.ttlAllClicks += 1
			Global.ttlLightSodaMoney += lightSodaClickPower
			Global.ttlTrueMoney += lightSodaClickPower
			
			SodaLightClickedSprite.show()
			SodaLightSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	SodaLightClickedSprite.hide()
	SodaLightSprite.show()

#Auto click once per second with power equal auto click power and click power 1
func _on_ls_auto_click_timer_timeout():
	Global.lightSodaMoney += (Global.lightSodaClickPower - 1) * Global.lightSodaAutoClick
	Global.trueMoney += (Global.lightSodaClickPower - 1) * Global.lightSodaAutoClick
