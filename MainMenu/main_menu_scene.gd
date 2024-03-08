extends Control

@onready var loadingScreen = preload("loading_screen.tscn").instantiate()
#EXIT button
func _on_exit_game_pressed():
	get_tree().quit()
#New Game Button
func _on_new_game_pressed():
	$ColorRect/GridContainer/NewGame/Popup.visible = true
#On new game clicked - confirm no
func _on_overwrite_no_pressed():
	$ColorRect/GridContainer/NewGame/Popup.visible = false
#On new game clicked - confirm yes
func _on_overwrite_yes_pressed():
	$ColorRect/GridContainer/NewGame/Popup.visible = false
	get_tree().current_scene.add_child(loadingScreen)
	$ColorRect/GridContainer/NewGame/NewGameTimer.start()
#If confirm new game is yes
func _on_new_game_timer_timeout():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

#Continue button
func _on_continue_pressed():
	if FileAccess.file_exists(Global.save_path):
		var file = FileAccess.open(Global.save_path, FileAccess.READ)
			#Session Timer Variables
		Global.ttlSecTime = file.get_var(Global.ttlSecTime)
		Global.ttlMinTime = file.get_var(Global.ttlMinTime)
		Global.ttlHourTime = file.get_var(Global.ttlHourTime)
		
		# Money Variables
		Global.trueMoney = file.get_var(Global.trueMoney)
		Global.lightSodaMoney = file.get_var(Global.lightSodaMoney)
		Global.zapSodaMoney = file.get_var(Global.zapSodaMoney)
		Global.doublePlusSodaMoney = file.get_var(Global.doublePlusSodaMoney)
		Global.berryBurstSodaMoney = file.get_var(Global.berryBurstSodaMoney)
		Global.godlySodaMoney = file.get_var(Global.godlySodaMoney)
		
		#Click Power Variables
		Global.lightSodaClickPower = file.get_var(Global.lightSodaClickPower)
		Global.zapSodaClickPower = file.get_var(Global.zapSodaClickPower)
		Global.doublePlusSodaClickPower = file.get_var(Global.doublePlusSodaClickPower)
		Global.berryBurstSodaClickPower = file.get_var(Global.berryBurstSodaClickPower)
		Global.godlySodaClickPower = file.get_var(Global.godlySodaClickPower)
		
		#Auto Click Power Variables Multiplier
		Global.lightSodaAutoClick = file.get_var(Global.lightSodaAutoClick)
		Global.zapSodaAutoClick = file.get_var(Global.zapSodaAutoClick)
		Global.doublePlusSodaAutoClick = file.get_var(Global.doublePlusSodaAutoClick)
		Global.berryBurstSodaAutoClick = file.get_var(Global.berryBurstSodaAutoClick)
		
		#Auto Click started variable
		Global.lightSodaAuto = file.get_var(Global.lightSodaAuto)
		Global.zapSodaAuto = file.get_var(Global.zapSodaAuto)
		Global.doublePlusSodaAuto = file.get_var(Global.doublePlusSodaAuto)
		Global.berryBurstSodaAuto = file.get_var(Global.berryBurstSodaAuto)
		
		#Tier 2 shop items
		Global.godlyFavor = file.get_var(Global.godlyFavor)
		Global.newAge = file.get_var(Global.newAge)
		Global.quantumSoda = file.get_var(Global.quantumSoda)
		Global.magicSoda = file.get_var(Global.magicSoda)
		Global.timeInSoda = file.get_var(Global.timeInSoda)
		Global.sodaAlchemy = file.get_var(Global.sodaAlchemy)
		Global.sodaUnity = file.get_var(Global.sodaUnity)
		Global.essenseTime = file.get_var(Global.essenseTime)
		
		#Alchemy Variables
		#Items - Base
		Global.basePotion = file.get_var(Global.basePotion)
		#Items - Dusts
		Global.caffinePowder = file.get_var(Global.caffinePowder)
		Global.chargedCaffinePowder = file.get_var(Global.chargedCaffinePowder)
		Global.doubleChargedCaffinePowder = file.get_var(Global.doubleChargedCaffinePowder)
		Global.explosivelyChargedCaffinePowder = file.get_var(Global.explosivelyChargedCaffinePowder)
		Global.godlyChargedCaffinePowder = file.get_var(Global.godlyChargedCaffinePowder)
		
		#Items - Extracts
		Global.lightSodaExtract = file.get_var(Global.lightSodaExtract)
		Global.zapSodaExtract = file.get_var(Global.zapSodaExtract)
		Global.doublePlusSodaExtract = file.get_var(Global.doublePlusSodaExtract)
		Global.berryBurstSodaExtract = file.get_var(Global.berryBurstSodaExtract)
		Global.godlySodaExtract = file.get_var(Global.godlySodaExtract)
		
		#Items - Potions
		Global.fizzyLightPotion = file.get_var(Global.fizzyLightPotion)
		Global.fizzyZapPotion = file.get_var(Global.fizzyZapPotion)
		Global.fizzyDoublePlusPotion = file.get_var(Global.fizzyDoublePlusPotion)
		Global.fizzyBerryBurstPotion = file.get_var(Global.fizzyBerryBurstPotion)
		Global.fizzyGodlyPotion = file.get_var(Global.fizzyGodlyPotion)
		#Active
		Global.activePotionPower = file.get_var(Global.activePotionPower)
		
		#Values for stats
		Global.ttlTrueMoney = file.get_var(Global.ttlTrueMoney)
		Global.ttlLightSodaMoney = file.get_var(Global.ttlLightSodaMoney)
		Global.ttlZapSodaMoney = file.get_var(Global.ttlZapSodaMoney)
		Global.ttlDoublePlusSodaMoney = file.get_var(Global.ttlDoublePlusSodaMoney)
		Global.ttlBerryBurstSodaMoney = file.get_var(Global.ttlBerryBurstSodaMoney)
		Global.ttlGodlySodaMoney = file.get_var(Global.ttlGodlySodaMoney)
		Global.ttlAllClicks = file.get_var(Global.ttlAllClicks)
		Global.prestiegeCounter = file.get_var(Global.prestiegeCounter)
		
		#Items- Crafted
		Global.ttlCrafted = file.get_var(Global.ttlCrafted)
		#Items - Base
		Global.ttlBasePotion = file.get_var(Global.ttlBasePotion)
		#Items - Dusts
		Global.ttlCaffinePowder = file.get_var(Global.ttlCaffinePowder)
		Global.ttlChargedCaffinePowder = file.get_var(Global.ttlChargedCaffinePowder)
		Global.ttlDoubleChargedCaffinePowder = file.get_var(Global.ttlDoubleChargedCaffinePowder)
		Global.ttlExplosivelyChargedCaffinePowder = file.get_var(Global.ttlExplosivelyChargedCaffinePowder)
		Global.ttlGodlyChargedCaffinePowder = file.get_var(Global.ttlGodlyChargedCaffinePowder)
		
		#Items - Extracts
		Global.ttlLightSodaExtract = file.get_var(Global.ttlLightSodaExtract)
		Global.ttlZapSodaExtract = file.get_var(Global.ttlZapSodaExtract)
		Global.ttlDoublePlusSodaExtract = file.get_var(Global.ttlDoublePlusSodaExtract)
		Global.ttlBerryBurstSodaExtract = file.get_var(Global.ttlBerryBurstSodaExtract)
		Global.ttlGodlySodaExtract = file.get_var(Global.ttlGodlySodaExtract)
		
		#Items - Potions
		Global.ttlFizzyLightPotion = file.get_var(Global.ttlFizzyLightPotion)
		Global.ttlFizzyZapPotion = file.get_var(Global.ttlFizzyZapPotion)
		Global.ttlFizzyDoublePlusPotion = file.get_var(Global.ttlFizzyDoublePlusPotion)
		Global.ttlFizzyBerryBurstPotion = file.get_var(Global.ttlFizzyBerryBurstPotion)
		Global.ttlFizzyGodlyPotion = file.get_var(Global.ttlFizzyGodlyPotion)
		
		#Achievements
		Global.baseClickPower = file.get_var(Global.baseClickPower)
		Global.ttlUpgradesBought = file.get_var(Global.ttlUpgradesBought)
		Global.baseMoneyPower = file.get_var(Global.baseMoneyPower)
		Global.amClicker = file.get_var(Global.amClicker)
		Global.semiClicker = file.get_var(Global.semiClicker)
		Global.proClicker = file.get_var(Global.proClicker)
		Global.godlyClicker = file.get_var(Global.godlyClicker)
		Global.shopU1 = file.get_var(Global.shopU1)
		Global.shopU2 = file.get_var(Global.shopU2)
		Global.shopU3 = file.get_var(Global.shopU3)
		Global.shopU4 = file.get_var(Global.shopU4)
		Global.shopU5 = file.get_var(Global.shopU5)
		Global.letItRain = file.get_var(Global.letItRain)
		
		get_tree().current_scene.add_child(loadingScreen)
		$ColorRect/GridContainer/Continue/ContinueTimer.start()
	else:
		$ColorRect/GridContainer/Continue/NoSave.visible = true
#Continue timeout
func _on_continue_timer_timeout():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_no_save_close_requested():
	$ColorRect/GridContainer/Continue/NoSave.visible = false


func _on_popup_close_requested():
	$ColorRect/GridContainer/NewGame/Popup.visible = false
