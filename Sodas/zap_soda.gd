extends Area2D
class_name ZapSoda

#Audio Variables
@onready var zap_soda_sfx = $ZapSodaSFX
#RNG Variables
var rng = RandomNumberGenerator.new()
var doubleClick = 1
#Node Variables
var ZapSodaClickedSprite
var ZapSodaSprite
#Number Variables
var trueMoney 
var zapSodaMoney 
var zapSodaClickPower 
var newAge = Global.newAge
var quantumSoda
#Particle variables
var timesClicked = 0
func _ready():
	ZapSodaClickedSprite = get_node("ZapSodaClickedSprite")
	ZapSodaSprite = get_node("ZapSodaSprite")

#When input is mouse, when mouse button left click, when pressed
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if Global.zapSodaAuto == true && %ZS_AutoClickTimer.is_stopped() == true :
		%ZS_AutoClickTimer.start()
	if  event is InputEventMouseButton:
		ZapSodaClickedSprite.hide()
		ZapSodaSprite.show()
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#Audio
			zap_soda_sfx.play()
			#Particles
			timesClicked += 3
			if %ZParticleTimer.is_stopped() == true:
				%ZParticleTimer.start()
			#Creates values based on most recent in global.gd
			newAge = Global.newAge
			trueMoney = Global.trueMoney
			zapSodaMoney = Global.zapSodaMoney
			zapSodaClickPower = Global.zapSodaClickPower
			quantumSoda = Global.quantumSoda
			#double click rng upgrade
			if rng.randi_range(1, 500) <= quantumSoda:
				doubleClick	= 2
			#Magic Soda RNG upgrade
			var sodaSelect = rng.randi_range(0, 3)
			if sodaSelect == 0:
				Global.lightSodaMoney += Global.magicSoda * 2
			elif sodaSelect == 1:
				zapSodaMoney += Global.magicSoda * 2 
			elif sodaSelect == 2:
				Global.doublePlusSodaMoney += Global.magicSoda * 2
			elif sodaSelect == 3:
				Global.berryBurstSodaMoney += Global.magicSoda * 2
			#Calculates the new value based on click power
			zapSodaMoney += ((zapSodaClickPower + (newAge * 1.5)) * doubleClick) * Global.activePotionPower
			trueMoney += ((2*(zapSodaClickPower)) * doubleClick) * Global.activePotionPower
			
			#Sets the new value for each money type
			Global.trueMoney = trueMoney
			Global.zapSodaMoney = zapSodaMoney
			Global.godlySodaMoney += Global.godlyFavor
			#Sets new stat values
			Global.ttlZapSodaMoney += (zapSodaClickPower + (newAge * 1.5)) * Global.activePotionPower
			Global.ttlTrueMoney = (Global.ttlTrueMoney + (zapSodaClickPower * 2)) * Global.activePotionPower
			Global.ttlAllClicks += 1
			#Resets double click
			doubleClick = 1

			
			ZapSodaClickedSprite.show()
			ZapSodaSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	ZapSodaClickedSprite.hide()
	ZapSodaSprite.show()


func _on_zs_auto_click_timer_timeout():
	#Creates values based on most recent in global.gd
	var zapSodaAutoClick = Global.zapSodaAutoClick
	var doubleClickA = 1
	newAge = Global.newAge
	trueMoney = Global.trueMoney
	zapSodaMoney = Global.zapSodaMoney
	zapSodaClickPower = Global.zapSodaClickPower
	#double click rng upgrade
	if rng.randi_range(1, 500) <= quantumSoda:
		doubleClickA = 2
	#Sets the new value for each money type
	Global.zapSodaMoney += (((zapSodaClickPower - 1) * zapSodaAutoClick) + (newAge * 1.5)) * doubleClickA #A
	Global.trueMoney += ((zapSodaClickPower - 1) * zapSodaAutoClick) * doubleClickA #B
	Global.godlySodaMoney += Global.godlyFavor
	#Sets new stat values
	Global.ttlZapSodaMoney += (((zapSodaClickPower - 1) * zapSodaAutoClick) + (newAge * 1.5)) * doubleClickA #A
	Global.ttlTrueMoney += ((zapSodaClickPower - 1) * zapSodaAutoClick) * doubleClickA #B
	#Resets double click
	doubleClickA = 1
		#Time in a soda bottle Upgrade
	if Global.timeInSoda > 0:
		var newTime = (1 - (float(Global.timeInSoda) / 100))
		%ZS_AutoClickTimer.wait_time = newTime


func _on_z_particle_timer_timeout():
	%ZSodaParticles.restart()
	%ZSodaParticles.amount = timesClicked
	timesClicked = 0
	%ZSodaParticles.emitting = true
	%ZParticleTimer.stop()
