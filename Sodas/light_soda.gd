extends Area2D
class_name SodaLight

#Audio Variables
@onready var light_soda_sfx = $LightSodaSFX

#RNG Variables
var rng = RandomNumberGenerator.new()
var doubleClick = 1
#Node Variables
var SodaLightClickedSprite
var SodaLightSprite
#Number Variables
var trueMoney 
var lightSodaMoney 
var lightSodaClickPower 
var newAge = Global.newAge
var quantumSoda = Global.quantumSoda
#Particles Variables
var timesClicked = 0

func _ready():
	SodaLightClickedSprite = get_node("SodaLightClickedSprite")
	SodaLightSprite = get_node("SodaLightSprite")
func _process(_delta):
	%LSAnimation.play("Idle")
#When input is mouse, when mouse button left click, when pressed 
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if Global.lightSodaAuto == true:
		%LS_AutoClickTimer.start()
	if  event is InputEventMouseButton:
		SodaLightClickedSprite.hide()
		SodaLightSprite.show()
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#Audio
			light_soda_sfx.play()
			#Particles
			timesClicked += 1
			if %LParticleTimer.is_stopped() == true && %LS_AutoClickTimer.is_stopped() == true:
				%LParticleTimer.start()
			
			#Creates values based on most recent in global.gd
			newAge = Global.newAge
			trueMoney = Global.trueMoney
			lightSodaMoney = Global.lightSodaMoney
			lightSodaClickPower = Global.lightSodaClickPower
			quantumSoda = Global.quantumSoda
			#double click rng upgrade
			if rng.randi_range(1, 500) <= quantumSoda :
				doubleClick	= 3
			#Magic Soda RNG upgrade
			var sodaSelect = rng.randi_range(0, 3)
			if sodaSelect == 0:
				lightSodaMoney += Global.magicSoda * 2
			elif sodaSelect == 1:
				Global.zapSodaMoney += Global.magicSoda * 2
			elif sodaSelect == 2:
				Global.doublePlusSodaMoney += Global.magicSoda * 2
			elif sodaSelect == 3:
				Global.berryBurstSodaMoney += Global.magicSoda * 2
			#Calculates the new value based on click power
			lightSodaMoney += ((lightSodaClickPower + (newAge * 1.5)) * doubleClick) * Global.activePotionPower#A
			trueMoney += ((lightSodaClickPower) * doubleClick) * Global.activePotionPower#B
			#Sets the new value for each money type
			Global.lightSodaMoney = lightSodaMoney
			Global.trueMoney = trueMoney
			Global.godlySodaMoney += Global.godlyFavor
			#Sets new stat values
			Global.ttlLightSodaMoney += ((lightSodaClickPower + (newAge * 1.5)) * doubleClick) * Global.activePotionPower#A
			Global.ttlTrueMoney += ((lightSodaClickPower) * doubleClick) * Global.activePotionPower#B
			Global.ttlAllClicks += 1
			#Reset double click value back to original value until next rng event
			doubleClick = 1
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
	var doubleClickA = 1
	#Creates values based on most recent in global.gd
	newAge = Global.newAge
	trueMoney = Global.trueMoney
	lightSodaMoney = Global.lightSodaMoney
	lightSodaClickPower = Global.lightSodaClickPower
	#double click rng upgrade
	if rng.randi_range(1, 500) <= quantumSoda:
		doubleClickA = 2
	#Sets the new value for each money type
	Global.lightSodaMoney += (((lightSodaClickPower - 1) * lightSodaAutoClick) + (newAge * 1.5)) * doubleClickA #A
	Global.trueMoney += ((lightSodaClickPower - 1) * lightSodaAutoClick) * doubleClickA #B
	Global.godlySodaMoney += Global.godlyFavor
	#Sets new stat values
	Global.ttlLightSodaMoney += (((lightSodaClickPower - 1) * lightSodaAutoClick) + (newAge * 1.5)) * doubleClickA #A
	Global.ttlTrueMoney += ((lightSodaClickPower - 1) * lightSodaAutoClick) * doubleClickA #B
	#Reset double click value back to original value until next rng event
	doubleClickA = 1
		#Time in a soda bottle Upgrade
	if Global.timeInSoda > 0:
		var newTime = (1 - (float(Global.timeInSoda) / 100))
		%LS_AutoClickTimer.wait_time = newTime



func _on_l_particle_timer_timeout():
	%LSodaParticles.restart()
	%LSodaParticles.amount = timesClicked
	timesClicked = 0
	%LSodaParticles.emitting = true
	%LParticleTimer.stop()

