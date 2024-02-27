extends Area2D
class_name DoublePlusSoda

#Audio Variables
@onready var double_plus_soda_sfx = $DoublePlusSodaSFX
#RNG Variables
var rng = RandomNumberGenerator.new()
var doubleClick = 1
#Sprite Variables
var DoublePlusSodaClickedSprite
var DoublePlusSodaSprite
#Number Variables
var trueMoney 
var doublePlusSodaMoney 
var doublePlusSodaClickPower 
var newAge = Global.newAge
var quantumSoda
func _ready():
	DoublePlusSodaClickedSprite = get_node("DoublePlusSodaClickedSprite")
	DoublePlusSodaSprite = get_node("DoublePlusSodaSprite")


#When input is mouse, when mouse button left click, when pressed
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if Global.doublePlusSodaAuto == true:
		%DPS_AutoClickTimer.start()
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
			quantumSoda = Global.quantumSoda
			#double click rng upgrade
			if rng.randi_range(1, 500) <= quantumSoda :
				doubleClick	= 2
			#Magic Soda RNG upgrade
			var sodaSelect = rng.randi_range(0, 3)
			if sodaSelect == 0:
				Global.lightSodaMoney += Global.magicSoda * 2
			elif sodaSelect == 1:
				Global.zapSodaMoney += Global.magicSoda * 2
			elif sodaSelect == 2:
				doublePlusSodaMoney += Global.magicSoda * 2
			elif sodaSelect == 3:
				Global.berryBurstSodaMoney += Global.magicSoda * 2
			#Calculates the new value based on click power
			doublePlusSodaMoney += ((doublePlusSodaClickPower + (newAge * 1.5)) * doubleClick) * Global.activePotionPower #A
			trueMoney += ((doublePlusSodaClickPower * 3) * doubleClick) * Global.activePotionPower #B
			
			#Sets the new value for each money type
			Global.doublePlusSodaMoney = doublePlusSodaMoney
			Global.trueMoney = trueMoney
			Global.godlySodaMoney += Global.godlyFavor
			#Sets new stat values
			Global.ttlDoublePlusSodaMoney += ((doublePlusSodaClickPower + (newAge * 1.5)) * doubleClick) * Global.activePotionPower #A
			Global.ttlTrueMoney += ((doublePlusSodaClickPower * 3) * doubleClick) * Global.activePotionPower #B
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
	var doubleClickA = 1
	trueMoney = Global.trueMoney
	doublePlusSodaMoney = Global.doublePlusSodaMoney
	doublePlusSodaClickPower = Global.doublePlusSodaClickPower
	newAge = Global.newAge
	quantumSoda = Global.quantumSoda
#double click rng upgrade
	if rng.randi_range(1, 500) <= quantumSoda :
		doubleClickA = 2
	#Sets the new value for each money type
	Global.doublePlusSodaMoney += (((doublePlusSodaClickPower - 1) * doublePlusSodaAutoClick) + (newAge * 1.5)) * doubleClickA #A
	Global.trueMoney += ((doublePlusSodaClickPower - 1) * doublePlusSodaAutoClick) * doubleClickA #B
	Global.godlySodaMoney += Global.godlyFavor
	#Sets new stat values
	Global.ttlDoublePlusSodaMoney += (((doublePlusSodaClickPower - 1) * doublePlusSodaAutoClick) + (newAge * 1.5)) * doubleClickA #A
	Global.ttlTrueMoney += ((doublePlusSodaClickPower - 1) * doublePlusSodaAutoClick) * doubleClickA #B
	#resets double click
	doubleClickA = 1
	#Time in a soda bottle Upgrade
	if Global.timeInSoda > 0:
		var newTime = (1 - (float(Global.timeInSoda) / 100))
		%DPS_AutoClickTimer.wait_time = newTime

