extends Control
class_name shop_back

#Updates store prices once scene is ready. Each cost label in the shop needs to be placed here
func _ready():
	#Light Soda Click Power labels
	%LM_CP_CostLabel.text = str(pow(1 + Global.lightSodaClickPower, 3))
	%LS_CP_CostLabel.text = str(pow(1 +  Global.lightSodaClickPower, 3))

	#Zap Soda Click Power labels
	%ZM_CP_CostLabel.text = str(pow(2 + (2 * Global.zapSodaClickPower), 3))
	%ZS_CP_CostLabel.text = str(pow(2 + Global.zapSodaClickPower, 3))

#Money container updated every frame
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
	if Global.trueMoney >= pow(1 + Global.lightSodaClickPower, 3):
		if Global.lightSodaMoney >= pow(1 + Global.lightSodaClickPower, 3):
			Global.trueMoney = Global.trueMoney - pow(1 + Global.lightSodaClickPower, 3)
			Global.lightSodaMoney = Global.lightSodaMoney - pow(1 + Global.lightSodaClickPower, 3)
			Global.lightSodaClickPower = Global.lightSodaClickPower + 1
			%LM_CP_CostLabel.text = str(pow(1 + Global.lightSodaClickPower, 3))
			%LS_CP_CostLabel.text = str(pow(1 + Global.lightSodaClickPower, 3))

#Zap Soda Click Power +1
func _on_zap_soda_click_power_plus1():
	if Global.trueMoney >= pow(10 + (2 * Global.zapSodaClickPower), 3):
		if Global.zapSodaMoney >= pow(2 + Global.zapSodaClickPower, 3):
			Global.trueMoney = Global.trueMoney - pow(2 + (2 * Global.zapSodaClickPower), 3)
			Global.zapSodaMoney = Global.zapSodaMoney - pow(2 + Global.zapSodaClickPower, 3)
			Global.zapSodaClickPower = Global.zapSodaClickPower + 1
			%ZM_CP_CostLabel.text = str(pow(2 + (2 * Global.zapSodaClickPower), 3))
			%ZS_CP_CostLabel.text = str(pow(2 + Global.zapSodaClickPower, 3))
			print("Button Clicked")
