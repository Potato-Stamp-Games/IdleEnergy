extends Control

#Updates store prices once scene is ready. Each cost label in the shop needs to be placed here
func _ready():
	%M_CP1_CostLabel.text = str(10 +(50 * Global.lightSodaClickPower))
	%LS_CP1_CostLabel.text = str(10 +(50 * Global.lightSodaClickPower))


func _process(delta):
	
	%MoneyLabel.text= str(Global.trueMoney)
	%LightSodaLabel.text = str(Global.lightSodaMoney)
	%SodaLabel.text = str(Global.sodaMoney)
	%DoublePlusSodaLabel.text = str(Global.doublePlusSodaMoney)
	%BerryBurstSodaLabel.text = str(Global.berryBurstSodaMoney)
	%GodlySodaLabel.text = str(Global.godlySodaMoney)




func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_cp_1_buy_button_pressed():
	if Global.trueMoney >= (10 +(50 * Global.lightSodaClickPower)):
		if Global.lightSodaMoney >= (10 +(50 * Global.lightSodaClickPower)):
			Global.trueMoney = Global.trueMoney - (10 +(50 * Global.lightSodaClickPower))
			Global.lightSodaMoney = Global.lightSodaMoney - (10 +(50 * Global.lightSodaClickPower))
			Global.lightSodaClickPower = Global.lightSodaClickPower + 1
			%M_CP1_CostLabel.text = str(10 +(50 * Global.lightSodaClickPower))
			%LS_CP1_CostLabel.text = str(10 +(50 * Global.lightSodaClickPower))

