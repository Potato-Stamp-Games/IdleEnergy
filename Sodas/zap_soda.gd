extends Area2D
class_name ZapSoda

var ZapSodaClickedSprite
var ZapSodaSprite
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
			var trueMoney = Global.trueMoney
			var zapSodaMoney = Global.zapSodaMoney
			var ZapSodaClickPower = Global.zapSodaClickPower
			
			#Calculates the new value based on click power
			zapSodaMoney += ZapSodaClickPower
			trueMoney = trueMoney + (ZapSodaClickPower * 2)
			
			#Sets the new value for each money type
			Global.trueMoney = trueMoney
			Global.zapSodaMoney = zapSodaMoney
			Global.ttlAllClicks += 1
			Global.ttlZapSodaMoney += ZapSodaClickPower
			Global.ttlTrueMoney = Global.ttlTrueMoney + (ZapSodaClickPower * 2)
			
			ZapSodaClickedSprite.show()
			ZapSodaSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	ZapSodaClickedSprite.hide()
	ZapSodaSprite.show()


func _on_zs_auto_click_timer_timeout():
	Global.zapSodaMoney += (Global.zapSodaClickPower - 1) * Global.zapSodaAutoClick
	Global.ttlZapSodaMoney += (Global.zapSodaClickPower - 1) * Global.zapSodaAutoClick
	Global.trueMoney += (2 * (Global.zapSodaClickPower - 1)) * Global.zapSodaAutoClick
	Global.ttlTrueMoney += (2 * (Global.zapSodaClickPower - 1)) * Global.zapSodaAutoClick
