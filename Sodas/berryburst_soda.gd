extends Area2D
class_name BerryBurstSoda
#RNG Variables
var rng = RandomNumberGenerator.new()
var doubleClick = 1
#Sprite Variables
var BerryBurstSodaClickedSprite
var BerryBurstSodaSprite
#Number Variables
var trueMoney 
var berryBurstSodaMoney 
var berryBurstSodaClickPower 
var newAge = Global.newAge
var quantumSoda
#Particle Variables
var timesClicked = 0
func _ready():
	BerryBurstSodaClickedSprite = get_node("BerryBurstSodaClickedSprite")
	BerryBurstSodaSprite = get_node("BerryBurstSodaSprite")
#When input is mouse, when mouse button left click, when pressed 
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if Global.berryBurstSodaAuto == true && %BBS_AutoClickTimer.is_stopped() == true :
		%BBS_AutoClickTimer.start()
	if  event is InputEventMouseButton:
		BerryBurstSodaClickedSprite.hide()
		BerryBurstSodaSprite.show()
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			$BerryBurstSodaSFX.play()
			#Particles
			timesClicked += 3
			if %BBParticleTimer.is_stopped() == true:
				%BBParticleTimer.start()
			#Creates values based on most recent in global.gd
			newAge = Global.newAge
			trueMoney = Global.trueMoney
			berryBurstSodaMoney = Global.berryBurstSodaMoney
			berryBurstSodaClickPower = Global.berryBurstSodaClickPower
			quantumSoda = Global.quantumSoda
			#double click RNG upgrade
			if rng.randi_range(1, 500) <= quantumSoda :
				doubleClick = 2
			#Magic Soda RNG upgrade
			var sodaSelect = rng.randi_range(0, 3)
			if sodaSelect == 0:
				Global.lightSodaMoney += Global.magicSoda * 2
			elif sodaSelect == 1:
				Global.zapSodaMoney += Global.magicSoda * 2
			elif sodaSelect == 2:
				Global.doublePlusSodaMoney += Global.magicSoda * 2
			elif sodaSelect == 3:
				berryBurstSodaMoney += Global.magicSoda * 2
			#Calculates the new value based on click power
			berryBurstSodaMoney += (berryBurstSodaClickPower + (newAge * 1.5) * doubleClick) * Global.activePotionPower#A
			trueMoney += ((berryBurstSodaClickPower * 4) * doubleClick) * Global.activePotionPower#B
			
			#Sets the new value for each money type
			Global.berryBurstSodaMoney = berryBurstSodaMoney
			Global.trueMoney = trueMoney
			Global.godlySodaMoney += Global.godlyFavor
			#Sets new stat values
			Global.ttlBerryBurstSodaMoney += (berryBurstSodaClickPower + (newAge * 1.5) * doubleClick) * Global.activePotionPower#A
			Global.ttlTrueMoney += ((berryBurstSodaClickPower * 4) * doubleClick) * Global.activePotionPower#B
			Global.ttlAllClicks += 1
			#Reset double click RNG
			doubleClick = 1
			
			
			BerryBurstSodaClickedSprite.show()
			BerryBurstSodaSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	BerryBurstSodaClickedSprite.hide()
	BerryBurstSodaSprite.show()


func _on_bbs_auto_click_timer_timeout():
	#Creates values based on most recent in global.gd
	var berryBurstSodaAutoClick = Global.berryBurstSodaAutoClick
	var doubleClickA = 1
	newAge = Global.newAge
	trueMoney = Global.trueMoney
	berryBurstSodaMoney = Global.berryBurstSodaMoney
	berryBurstSodaClickPower = Global.berryBurstSodaClickPower
	#double click rng upgrade
	if rng.randi_range(1, 500) <= quantumSoda :
		doubleClickA = 2
	#Sets the new value for each money type
	Global.berryBurstSodaMoney += (((berryBurstSodaClickPower - 1) * berryBurstSodaAutoClick) + (newAge * 1.5)) * doubleClickA #A
	Global.trueMoney += ((berryBurstSodaClickPower - 1) * berryBurstSodaAutoClick) * doubleClickA #B
	Global.godlySodaMoney += Global.godlyFavor
	#Sets new stat values
	Global.ttlBerryBurstSodaMoney += (((berryBurstSodaClickPower - 1) * berryBurstSodaAutoClick) + (newAge * 1.5)) * doubleClickA #A
	Global.ttlTrueMoney += ((berryBurstSodaClickPower - 1) * berryBurstSodaAutoClick) * doubleClickA #B
	#Reset double click RNG
	doubleClickA = 1
		#Time in a soda bottle Upgrade
	if Global.timeInSoda > 0:
		var newTime = (1 - (float(Global.timeInSoda) / 100))
		%BBS_AutoClickTimer.wait_time = newTime


func _on_bb_particle_timer_timeout():
	%BBSodaParticles.restart()
	%BBSodaParticles.amount = timesClicked
	timesClicked = 0
	%BBSodaParticles.emitting = true
	%BBParticleTimer.stop()
