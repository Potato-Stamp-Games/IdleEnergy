extends Control

#Updates store prices once scene is ready. Each cost label in the shop needs to be placed here
func _ready():
	#Click Power 1 labels
	%M_CP1_CostLabel.text = str(pow(1 + Global.lightSodaClickPower, 3))
	%LS_CP1_CostLabel.text = str(pow(1 +  Global.lightSodaClickPower, 3))
	
	#Click Power 2 labels
	%M_CP2_CostLabel.text = str(pow(2 + (2 * Global.sodaMoneyClickPower), 3))
	%LS_CP2_CostLabel.text = str(pow(2 + Global.sodaMoneyClickPower, 3))

#Money container updated every frame
func _process(delta):
	
	%MoneyLabel.text= str(Global.trueMoney)
	%LightSodaLabel.text = str(Global.lightSodaMoney)
	%SodaLabel.text = str(Global.sodaMoney)
	%DoublePlusSodaLabel.text = str(Global.doublePlusSodaMoney)
	%BerryBurstSodaLabel.text = str(Global.berryBurstSodaMoney)
	%GodlySodaLabel.text = str(Global.godlySodaMoney)



#Change scence back to main & deletes this scene
func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

#Click Power 1
func _on_cp_1_buy_button_pressed():
	if Global.trueMoney >= pow(1 + Global.lightSodaClickPower, 3):
		if Global.lightSodaMoney >= pow(1 + Global.lightSodaClickPower, 3):
			Global.trueMoney = Global.trueMoney - pow(1 + Global.lightSodaClickPower, 3)
			Global.lightSodaMoney = Global.lightSodaMoney - pow(1 + Global.lightSodaClickPower, 3)
			Global.lightSodaClickPower = Global.lightSodaClickPower + 1
			%M_CP1_CostLabel.text = str(pow(1 + Global.lightSodaClickPower, 3))
			%LS_CP1_CostLabel.text = str(pow(1 + Global.lightSodaClickPower, 3))


#Click Power 2
func _on_cp_2_buy_button_pressed():
	if Global.trueMoney >= pow(10 + (2 * Global.sodaMoneyClickPower), 3):
		if Global.sodaMoney >= pow(2 + Global.sodaMoneyClickPower, 3):
			Global.trueMoney = Global.trueMoney - pow(2 + (2 * Global.sodaMoneyClickPower), 3)
			Global.sodaMoney = Global.sodaMoney - pow(2 + Global.sodaMoneyClickPower, 3)
			Global.sodaMoneyClickPower = Global.sodaMoneyClickPower + 1
			%M_CP2_CostLabel.text = str(pow(2 + (2 * Global.sodaMoneyClickPower), 3))
			%LS_CP2_CostLabel.text = str(pow(2 + Global.sodaMoneyClickPower, 3))
			print("Button Clicked")
