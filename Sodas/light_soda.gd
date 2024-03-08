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
			%LSodaParticles.amount = 20
			%LSodaParticles.emitting = true
			%LSodaParticles.restart()
			#Sets variables
			var sodaMoney = Global.lightSodaMoney
			var weatherMultiplier = 1
			#Calculates the new value based on click power
			if Global.lsRain == true:
				weatherMultiplier = 1.5
			elif Global.rainbowStart == true:
				weatherMultiplier = 3
			sodaMoney += FuncGlobal.process_click(Global.lightSodaClickPower, weatherMultiplier)
			#Sets new stat values
			Global.lightSodaMoney = sodaMoney
			Global.ttlLightSodaMoney = sodaMoney
			SodaLightClickedSprite.show()
			SodaLightSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	SodaLightClickedSprite.hide()
	SodaLightSprite.show()
#Auto click once per second with power equal auto click power and click power 1

func _on_ls_auto_click_timer_timeout():
	var sodaMoneyAuto = Global.lightSodaMoney
	#Sets the new value for each money type
	var weatherMultiplier = 1
	#Sets the new value for each money type
	if Global.lsRain == true:
		weatherMultiplier = 1.5
	elif (Global.rainbowStart == true):
		weatherMultiplier = 3
	sodaMoneyAuto += FuncGlobal.process_auto_click(Global.lightSodaClickPower, Global.lightSodaAutoClick, weatherMultiplier)
	Global.lightSodaMoney = sodaMoneyAuto
	Global.ttlLightSodaMoney = sodaMoneyAuto
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

