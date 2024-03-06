extends Area2D
class_name ZapSoda

#Audio Variables
@onready var zap_soda_sfx = $ZapSodaSFX
var doubleClick = 1
#Node Variables
var ZapSodaClickedSprite
var ZapSodaSprite
#Particle variables
var timesClicked = 0
func _ready():
	ZapSodaClickedSprite = get_node("ZapSodaClickedSprite")
	ZapSodaSprite = get_node("ZapSodaSprite")
#Play animation
func _process(_delta):
	%ZSAnimation.play("Idle")
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
			#Sets soda money variable
			var sodaMoney = Global.zapSodaMoney
			var weatherMultiplier = 1
			#Calculates the new value based on click power
			if Global.zsRain == true:
				weatherMultiplier = 1.5
			elif Global.rainbowStart == true:
				weatherMultiplier = 3
			sodaMoney += FuncGlobal.process_click(Global.zapSodaClickPower, weatherMultiplier)
			#Sets new stat values
			Global.zapSodaMoney = sodaMoney
			Global.ttlZapSodaMoney = sodaMoney
			
			ZapSodaClickedSprite.show()
			ZapSodaSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	ZapSodaClickedSprite.hide()
	ZapSodaSprite.show()


func _on_zs_auto_click_timer_timeout():
	#Creates values based on most recent in global.gd
	var sodaMoneyAuto = Global.zapSodaMoney
	var weatherMultiplier = 1
	#Sets the new value for each money type
	if Global.zsRain == true:
		weatherMultiplier = 1.5
	elif (Global.rainbowStart == true):
		weatherMultiplier = 3
	sodaMoneyAuto += FuncGlobal.process_auto_click(Global.zapSodaClickPower, Global.zapSodaAutoClick, weatherMultiplier)
	Global.zapSodaMoney = sodaMoneyAuto
	Global.ttlZapSodaMoney = sodaMoneyAuto
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
