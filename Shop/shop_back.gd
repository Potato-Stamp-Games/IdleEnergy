extends Control
class_name shop_back

#Updates store prices. Each cost label in the shop needs to be placed here
#Money container updated every frame
func _process(delta):
	%MoneyLabel.text= str(Global.trueMoney)
	%LightSodaLabel.text = str(Global.lightSodaMoney)
	%ZapSodaLabel.text = str(Global.zapSodaMoney)
	%DoublePlusSodaLabel.text = str(Global.doublePlusSodaMoney)
	%BerryBurstSodaLabel.text = str(Global.berryBurstSodaMoney)
	%GodlySodaLabel.text = str(Global.godlySodaMoney)
	
		#Light Soda Click Power labels
	%LM_CP_CostLabel.text = str(pow(3 + Global.lightSodaClickPower, 2))
	%LS_CP_CostLabel.text = str(pow(1 + Global.lightSodaClickPower, 2))

	#Zap Soda Click Power labels
	%ZM_CP_CostLabel.text = str(pow(10 + (2 * Global.zapSodaClickPower), 2))
	%ZS_CP_CostLabel.text = str(pow(2 + Global.zapSodaClickPower, 2))

	#Double Plus Soda Click Power Labels
	%DPM_CP_CostLabel.text = str(pow(25 + (3 * Global.doublePlusSodaClickPower), 2))
	%DPS_CP_CostLabel.text = str(pow(3 + Global.doublePlusSodaClickPower, 2))
	
	#Berry Burst Soda Click Power Labels
	%BBPM_CP_CostLabel.text = str(pow(50 + (4 * Global.berryBurstSodaClickPower), 2))
	%BBPS_CP_CostLabel.text = str(pow(4 + Global.berryBurstSodaClickPower, 2))

#Change scence back to main & deletes this scene
func _on_back_button_pressed():
	Global.ttlAllClicks += 1
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

#STORE UPGRADES--------------------------------------------------------------------------------------------
#Light Soda Click Power +1
func _on_light_soda_click_power_plus1():
	var moneyCostOfUpgrade = pow(1 + (2 * Global.lightSodaClickPower), 2)
	var sodaCostOfUpgrade = pow(1 + (2 * Global.lightSodaClickPower), 2)
	
	if Global.trueMoney >= moneyCostOfUpgrade:
		if Global.lightSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.lightSodaMoney = Global.lightSodaMoney - sodaCostOfUpgrade
			Global.lightSodaClickPower += 1
			%LM_CP_CostLabel.text = str(moneyCostOfUpgrade)
			%LS_CP_CostLabel.text = str(sodaCostOfUpgrade)
			Global.ttlAllClicks += 1

#Zap Soda Click Power +1
func _on_zap_soda_click_power_plus1():	
	var moneyCostOfUpgrade = pow(10 + (2 * Global.zapSodaClickPower), 2)
	var sodaCostOfUpgrade = pow(2 + Global.zapSodaClickPower, 2)
	
	if Global.trueMoney >= moneyCostOfUpgrade:
		if Global.zapSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.zapSodaMoney = Global.zapSodaMoney - sodaCostOfUpgrade
			Global.zapSodaClickPower += 1
			%ZM_CP_CostLabel.text = str(moneyCostOfUpgrade)
			%ZS_CP_CostLabel.text = str(sodaCostOfUpgrade)
			Global.ttlAllClicks += 1

#Double Plus Soda Click Power +1
func _on_double_plus_soda_click_power_plus1():
	var moneyCostOfUpgrade = pow(10 + (3 * Global.doublePlusSodaClickPower), 2)
	var sodaCostOfUpgrade = pow(3 + Global.doublePlusSodaClickPower, 2)
	
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.doublePlusSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.doublePlusSodaMoney = Global.doublePlusSodaMoney - sodaCostOfUpgrade
			Global.doublePlusSodaClickPower += 1
			%DPM_CP_CostLabel.text = str(moneyCostOfUpgrade)
			%DPS_CP_CostLabel.text = str(sodaCostOfUpgrade)
			Global.ttlAllClicks += 1
			

#Berry Burst Soda Click Power +1
func _on_berry_burst_soda_click_power_plus1():
	var moneyCostOfUpgrade = pow(10 + (4 * Global.berryBurstSodaClickPower), 2)
	var sodaCostOfUpgrade = pow(4 + Global.berryBurstSodaClickPower, 2)
	
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.berryBurstSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.berryBurstSodaMoney = Global.berryBurstSodaMoney - sodaCostOfUpgrade
			Global.berryBurstSodaClickPower += 1
			%BBPM_CP_CostLabel.text = str(moneyCostOfUpgrade)
			%BBPS_CP_CostLabel.text = str(sodaCostOfUpgrade)
			Global.ttlAllClicks += 1
#END OF STORE UPGRADES ------------
