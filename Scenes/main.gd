extends Control

#RNG Variables
var rng = RandomNumberGenerator.new()
#Weather Start Variables
var rainStart = false

func process_event(aIcon, aName: String, aDescription: String):
	OverLay.eventName = "An Event is Happening!"
	var newIcon: Texture2D = load(aIcon)
	OverLay.icon = newIcon
	OverLay.achievementName = aName
	OverLay.description = aDescription
	OverLay.reward = ""
	OverLay.showAchievement = true

func _on_rng_timer_timeout():
	#These each call a random number and do no equal the same number. 
	#if number is greater/equal to sodaAlchemy upgrades bought
	if rng.randi_range(1, 8000) <= Global.sodaAlchemy :
		Global.basePotion += 1
		Global.ttlBasePotion += 1
	if rng.randi_range(1, 12000) <= Global.sodaAlchemy :
		Global.caffinePowder += 1
		Global.ttlCaffinePowder += 1
	if rng.randi_range(1, 12000) <= Global.sodaAlchemy :
		Global.lightSodaExtract +=  1
		Global.ttlLightSodaExtract +=  1
	if rng.randi_range(1, 30000) <= Global.sodaAlchemy :
		Global.chargedCaffine += 1
		Global.ttlChargedCaffine += 1
	if rng.randi_range(1, 35000) <= Global.sodaAlchemy :
		Global.zapSodaExtract += 1
		Global.ttlZapSodaExtract += 1
	if rng.randi_range(1, 100000) <= Global.sodaAlchemy :
		Global.doublePlusSodaExtract += 1
		Global.ttlDoublePlusSodaExtract += 1
	if rng.randi_range(1, 120000) <= Global.sodaAlchemy :
		Global.doubleChargedCaffine += 1
		Global.ttlDoubleChargedCaffine += 1
	if rng.randi_range(1, 200000) <= Global.sodaAlchemy :
		Global.berryBurstSodaExtract += 1
		Global.ttlBerryBurstSodaExtract += 1
	if rng.randi_range(1, 225000) <= Global.sodaAlchemy :
		Global.explosivelyChargedCaffine += 1
		Global.ttlExplosivelyChargedCaffine += 1
	if rng.randi_range(1, 400000) <= Global.sodaAlchemy :
		Global.godlySodaExtract += 1
		Global.ttlGodlySodaExtract += 1
	if rng.randi_range(1, 550000) <= Global.sodaAlchemy :
		Global.godlyChargedCaffine += 1
		Global.ttlGodlyChargedCaffine += 1
#RAIN
	if Global.letItRain == true and rng.randi_range(1, 600) <= 1 and rainStart == false and Global.rainbowStart == false: #About every 10 minutes
		rainStart = true
		%RainTimer.wait_time = rng.randi_range(60, 240)
		%Rain.amount = rng.randi_range(50, 1200)
		%Rain.amount_ratio = 0
		%Rain.process_material.direction.x = rng.randi_range(-10, 10)
		$UI.get_node("BackgroundImage/Background").self_modulate = "2300cf"
		
		%Rain/RainBuildTimer.start()
		%RainTimer.start()
		
		%NightStars.emitting = true
		%Rain.emitting = true
		var sodaSelect = rng.randi_range(1, 4)
		match sodaSelect:
			1:
				Global.lsRain = true
				process_event("res://Scenes/Achievements/AchievementIcons/LetItRainSprite.png", "It's Starting to Rain","1.5x light soda power")
				%LSMultiplyLbl.text = "x4"
			2:
				Global.zsRain = true
				process_event("res://Scenes/Achievements/AchievementIcons/LetItRainSprite.png", "It's Starting to Rain","1.5x zap soda power")
				%ZSMultiplyLbl.text = "x4"
			3:
				Global.dpRain = true
				process_event("res://Scenes/Achievements/AchievementIcons/LetItRainSprite.png", "It's Starting to Rain","1.5x double plus soda power")
				%DPSMultiplyLbl.text = "x4"
			4:
				Global.bbRain = true
				process_event("res://Scenes/Achievements/AchievementIcons/LetItRainSprite.png", "It's Starting to Rain","1.5x berry burst soda power")
				%BBSMultiplyLbl.text = "x4"
#RAINBOW
	if rng.randi_range(1, 1800) <= 1 and rainStart == false and Global.rainbowStart ==  false: #About every 30 minutes
		%RainbowTimer.wait_time = rng.randi_range(45, 120)
		process_event("res://UI/UISprites/RainbowIcon.png", "A Rainbow Has Appeared!","3x all soda power")
		%LSMultiplyLbl.text = "x3"
		%ZSMultiplyLbl.text = "x3"
		%DPSMultiplyLbl.text = "x3"
		%BBSMultiplyLbl.text = "x3"
		Global.rainbowStart = true
#SHOOTING STARS
	if Global.shootingStarsStart == false and rng.randi_range(1, 900) <= 1 and rainStart == false and Global.rainbowStart == false: #About every 15 minutes
		%ShootingStarsTimer.wait_time = rng.randi_range(60, 240)
		%ShootingStars.amount = rng.randi_range(10, 30)
		%ShootingStars.emitting = true
		%NightStars.emitting = true
		$UI.get_node("BackgroundImage/Background").self_modulate = "001f42"
		process_event("res://UI/UISprites/ShootingStarsSprite.png", "Stars Are Falling From the Sky ","3.5x Money Gained")
		%LSMultiplyLbl.text = "x3.5"
		%ZSMultiplyLbl.text = "x3.5"
		%DPSMultiplyLbl.text = "x3.5"
		%BBSMultiplyLbl.text = "x3.5"
		%ShootingStarsTimer.start()
		Global.shootingStarsStart = true

#Weather Control
func _on_rain_timer_timeout():
	Global.lsRain = false
	Global.zsRain = false
	Global.dpRain = false
	Global.bbRain = false
	%LSMultiplyLbl.text = ""
	%ZSMultiplyLbl.text = ""
	%DPSMultiplyLbl.text = ""
	%BBSMultiplyLbl.text = ""
	$UI.get_node("BackgroundImage/Background").self_modulate = "ffffff"
	%RainTimer.stop()
	%Rain.emitting = false
	%NightStars.emitting = false


func _on_rain_build_timer_timeout():
	if(%Rain.amount_ratio < 1):
		%Rain.amount_ratio += 0.10
	else:
		$Rain/RainBuildTimer.stop()


func _on_shooting_stars_timer_timeout():
	%LSMultiplyLbl.text = ""
	%ZSMultiplyLbl.text = ""
	%DPSMultiplyLbl.text = ""
	%BBSMultiplyLbl.text = ""
	$UI.get_node("BackgroundImage/Background").self_modulate = "ffffff"
	%ShootingStarsTimer.stop()
	%ShootingStars.emitting = false
	%NightStars.emitting = false
	Global.shootingStarsStart = false
	
