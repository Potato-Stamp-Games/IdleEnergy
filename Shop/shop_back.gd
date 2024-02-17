extends Control
class_name shop_back

#Updates store prices once scene is ready. Each cost label in the shop needs to be placed here
func _ready():
	#Light Soda Click Power labels
	%LM_CP_CostLabel.text = str(pow(1 + Global.lightSodaClickPower, 3))
	%LS_CP_CostLabel.text = str(pow(1 +  Global.lightSodaClickPower, 3))

	#Zap Soda Click Power labels
	%ZM_CP_CostLabel.text = str(pow(10 + (2 * Global.zapSodaClickPower), 3))
	%ZS_CP_CostLabel.text = str(pow(2 + Global.zapSodaClickPower, 3))

	#Double Plus Soda Click Power Labels
	%DPM_CP_CostLabel.text = str(pow(100 + (3 * Global.doublePlusSodaClickPower), 2))
	%DPS_CP_CostLabel.text = str(pow(3 + Global.doublePlusSodaClickPower, 2))

##Money container updated every frame
func _process(delta):
	%MoneyLabel.text= str(Global.trueMoney)
	%LightSodaLabel.text = str(Global.lightSodaMoney)
	%ZapSodaLabel.text = str(Global.zapSodaMoney)
	%DoublePlusSodaLabel.text = str(Global.doublePlusSodaMoney)
	%BerryBurstSodaLabel.text = str(Global.berryBurstSodaMoney)
	%GodlySodaLabel.text = str(Global.godlySodaMoney)

#Change scence back to main & deletes this scene
func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

#Light Soda Click Power +1
func _on_light_soda_click_power_plus1():
	var moneyCostOfUpgrade = pow(1 + Global.lightSodaClickPower, 3)
	var sodaCostOfUpgrade = pow(1 + Global.lightSodaClickPower, 3)
	
	if Global.trueMoney >= moneyCostOfUpgrade:
		if Global.lightSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.lightSodaMoney = Global.lightSodaMoney - sodaCostOfUpgrade
			Global.lightSodaClickPower = Global.lightSodaClickPower + 1
			%LM_CP_CostLabel.text = str(pow(1 + Global.lightSodaClickPower, 3))
			%LS_CP_CostLabel.text = str(pow(1 + Global.lightSodaClickPower, 3))

#Zap Soda Click Power +1
func _on_zap_soda_click_power_plus1():	
	var moneyCostOfUpgrade = pow(10 + (2 * Global.zapSodaClickPower), 3)
	var sodaCostOfUpgrade = pow(2 + Global.zapSodaClickPower, 3)
	
	if Global.trueMoney >= moneyCostOfUpgrade:
		if Global.zapSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.zapSodaMoney = Global.zapSodaMoney - sodaCostOfUpgrade
			Global.zapSodaClickPower = Global.zapSodaClickPower + 1
			%ZM_CP_CostLabel.text = str(pow(10 + (2 * Global.zapSodaClickPower), 3))
			%ZS_CP_CostLabel.text = str(pow(2 + Global.zapSodaClickPower, 3))
			print("Button Clicked")

#Double Plus Soda Click Power +1
func _on_double_plus_soda_click_power_plus1():
	var moneyCostOfUpgrade = pow(100 + (3 * Global.doublePlusSodaClickPower), 2)
	var sodaCostOfUpgrade = pow(3 + Global.doublePlusSodaClickPower, 2)
	
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.doublePlusSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.doublePlusSodaMoney = Global.doublePlusSodaMoney - sodaCostOfUpgrade
			Global.doublePlusSodaClickPower = Global.doublePlusSodaClickPower + 1
			%DPM_CP_CostLabel.text = str(pow(100 + (3 * Global.doublePlusSodaClickPower), 2))
			%DPS_CP_CostLabel.text = str(pow(3 + Global.doublePlusSodaClickPower, 2))
			print("Button Clicked")
