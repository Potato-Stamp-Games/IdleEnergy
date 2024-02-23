extends Area2D
class_name DoublePlusSoda

#Audio Variables
@onready var double_plus_soda_sfx = $DoublePlusSodaSFX

var DoublePlusSodaClickedSprite
var DoublePlusSodaSprite
#Number Variables
var trueMoney 
var doublePlusSodaMoney 
var doublePlusSodaClickPower 
var newAge = Global.newAge
func _ready():
	DoublePlusSodaClickedSprite = get_node("DoublePlusSodaClickedSprite")
	DoublePlusSodaSprite = get_node("DoublePlusSodaSprite")
	if Global.doublePlusSodaAuto == true:
		%DPS_AutoClickTimer.start()

#When input is mouse, when mouse button left click, when pressed
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		DoublePlusSodaClickedSprite.hide()
		DoublePlusSodaSprite.show()
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#Audio
			double_plus_soda_sfx.play()
			
			#Creates values based on most recent in global.gd
			trueMoney = Global.trueMoney
			doublePlusSodaMoney = Global.doublePlusSodaMoney
			doublePlusSodaClickPower = Global.doublePlusSodaClickPower
			newAge = Global.newAge
			
			#Calculates the new value based on click power
			doublePlusSodaMoney += doublePlusSodaClickPower + (newAge * 1.5)#A
			trueMoney = trueMoney + (doublePlusSodaClickPower * 3)#B
			
			#Sets the new value for each money type
			Global.doublePlusSodaMoney = doublePlusSodaMoney
			Global.trueMoney = trueMoney
			Global.godlySodaMoney += Global.godlyFavor
			#Sets new stat values
			Global.ttlDoublePlusSodaMoney += doublePlusSodaClickPower + (newAge * 1.5)#A
			Global.ttlTrueMoney = Global.ttlTrueMoney + (doublePlusSodaClickPower * 3)#B
			Global.ttlAllClicks += 1
			
			DoublePlusSodaClickedSprite.show()
			DoublePlusSodaSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	DoublePlusSodaClickedSprite.hide()
	DoublePlusSodaSprite.show()


func _on_dps_auto_click_timer_timeout():
	#Creates values based on most recent in global.gd
	var doublePlusSodaAutoClick = Global.doublePlusSodaAutoClick
	trueMoney = Global.trueMoney
	doublePlusSodaMoney = Global.doublePlusSodaMoney
	doublePlusSodaClickPower = Global.doublePlusSodaClickPower
	newAge = Global.newAge
	#Sets the new value for each money type
	Global.doublePlusSodaMoney += ((doublePlusSodaClickPower - 1) * doublePlusSodaAutoClick) + (newAge * 1.5) #A
	Global.trueMoney += (doublePlusSodaClickPower - 1) * doublePlusSodaAutoClick #B
	Global.godlySodaMoney += Global.godlyFavor
	#Sets new stat values
	Global.ttldoublePlusSodaMoney += ((doublePlusSodaClickPower - 1) * doublePlusSodaAutoClick) + (newAge * 1.5) #A
	Global.ttlTrueMoney += (doublePlusSodaClickPower - 1) * doublePlusSodaAutoClick#B
