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
func _process(_delta):
	%BBAnimation.play("Idle")
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
			%BBSodaParticles.amount = 20
			%BBSodaParticles.emitting = true
			%BBSodaParticles.restart()
			#Sets variables
			var sodaMoney = Global.berryBurstSodaMoney
			var weatherMultiplier = 1
			#Calculates the new value based on click power
			if Global.bbRain == true:
				weatherMultiplier = 1.5
			elif Global.rainbowStart == true:
				weatherMultiplier = 3
			sodaMoney += FuncGlobal.process_click(Global.berryBurstSodaClickPower, weatherMultiplier)
			#Sets new stat values
			Global.berryBurstSodaMoney = sodaMoney
			Global.ttlBerryBurstSodaMoney = sodaMoney
			BerryBurstSodaClickedSprite.show()
			BerryBurstSodaSprite.hide()
#When mouse leaves collision box, reset sprites
func _on_mouse_exited():
	BerryBurstSodaClickedSprite.hide()
	BerryBurstSodaSprite.show()


func _on_bbs_auto_click_timer_timeout():
	var sodaMoneyAuto = Global.berryBurstSodaMoney
	var weatherMultiplier = 1
	#Sets the new value for each money type
	if Global.bbRain == true:
		weatherMultiplier = 1.5
	elif (Global.rainbowStart == true):
		weatherMultiplier = 3
	sodaMoneyAuto += FuncGlobal.process_auto_click(Global.berryBurstSodaClickPower, Global.berryBurstSodaAutoClick, weatherMultiplier)
	Global.berryBurstSodaMoney = sodaMoneyAuto
	Global.ttlBerryBurstSodaMoney = sodaMoneyAuto
		#Time in a soda bottle Upgrade
	if Global.timeInSoda > 0:
		var newTime = (1 - (float(Global.timeInSoda) / 100))
		%BBS_AutoClickTimer.wait_time = newTime

