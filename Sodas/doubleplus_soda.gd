extends Area2D
class_name DoublePlusSoda

#Audio Variables
@onready var double_plus_soda_sfx = $DoublePlusSodaSFX
var doubleClick = 1
#Sprite Variables
var DoublePlusSodaClickedSprite
var DoublePlusSodaSprite
#Particle Variables
var timesClicked = 0
func _process(_delta):
	%DPAnimation.play("Idle")
func _ready():
	DoublePlusSodaClickedSprite = get_node("DoublePlusSodaClickedSprite")
	DoublePlusSodaSprite = get_node("DoublePlusSodaSprite")
#When input is mouse, when mouse button left click, when pressed
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if Global.doublePlusSodaAuto == true && %DPS_AutoClickTimer.is_stopped() == true :
		%DPS_AutoClickTimer.start()
	if  event is InputEventMouseButton:
		DoublePlusSodaClickedSprite.hide()
		DoublePlusSodaSprite.show()
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#Audio
			double_plus_soda_sfx.play()
			#Particles
			timesClicked += 2
			if %DPParticleTimer.is_stopped() == true:
				%DPParticleTimer.start()
			#Sets soda money variable
			var sodaMoney = Global.doublePlusSodaMoney
			var weatherMultiplier = 1
			#Calculates the new value based on click power
			if Global.dpRain == true:
				weatherMultiplier = 1.5
			elif Global.rainbowStart == true:
				weatherMultiplier = 3
			sodaMoney += FuncGlobal.process_click(Global.doublePlusSodaClickPower, weatherMultiplier)
			#Sets new stat values
			Global.doublePlusSodaMoney = sodaMoney
			Global.ttlDoublePlusSodaMoney = sodaMoney
			
			DoublePlusSodaClickedSprite.show()
			DoublePlusSodaSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	DoublePlusSodaClickedSprite.hide()
	DoublePlusSodaSprite.show()


func _on_dps_auto_click_timer_timeout():
	var sodaMoneyAuto = Global.doublePlusSodaMoney
	var weatherMultiplier = 1
	#Sets the new value for each money type
	if Global.dpsRain == true:
		weatherMultiplier = 1.5
	elif (Global.rainbowStart == true):
		weatherMultiplier = 3
	sodaMoneyAuto += FuncGlobal.process_auto_click(Global.doublePlusSodaClickPower, Global.doublePlusSodaAutoClick, weatherMultiplier)
	Global.doublePlusSodaMoney = sodaMoneyAuto
	Global.ttlDoublePlusSodaMoney = sodaMoneyAuto
	#Time in a soda bottle Upgrade
	if Global.timeInSoda > 0:
		var newTime = (1 - (float(Global.timeInSoda) / 100))
		%DPS_AutoClickTimer.wait_time = newTime



func _on_dp_particle_timer_timeout():
	%DPSodaParticles.restart()
	%DPSodaParticles.amount = timesClicked
	timesClicked = 0
	%DPSodaParticles.emitting = true
	%DPParticleTimer.stop()
