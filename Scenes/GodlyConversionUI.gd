extends BoxContainer
class_name GodlyConversionUI

var buyAmount = 0
var buyMultiplied = 1


func _on_godly_x_1_button_pressed():
	buyAmount = buyAmount + (1 * buyMultiplied)

func _on_godly_x_10_button_pressed():
	buyAmount = buyAmount + (10 * buyMultiplied)

func _on_godly_x_100_button_pressed():
	buyAmount = buyAmount + (100 * buyMultiplied)

func _on_godly_x_1000_button_pressed():
	buyAmount = buyAmount + (1000 * buyMultiplied)

func _on_godly_x_10000_button_pressed():
	buyAmount = buyAmount + (10000 * buyMultiplied)


func _on_multiplier_godly_x_10_button_toggled(toggled_on):
	if toggled_on == true:
		buyMultiplied = 10
		%MultiplierGodlyx100Button.disabled = true
		%MultiplierGodlyx1000Button.disabled = true
	else:
		buyMultiplied = 1
		%MultiplierGodlyx100Button.disabled = false
		%MultiplierGodlyx1000Button.disabled = false

func _on_multiplier_godly_x_100_button_toggled(toggled_on):
	if toggled_on == true:
		buyMultiplied = 100
		%MultiplierGodlyx10Button.disabled = true
		%MultiplierGodlyx1000Button.disabled = true
	else:
		buyMultiplied = 1
		%MultiplierGodlyx10Button.disabled = false
		%MultiplierGodlyx1000Button.disabled = false

func _on_multiplier_godly_x_1000_button_toggled(toggled_on):
	if toggled_on == true:
		buyMultiplied = 1000
		%MultiplierGodlyx100Button.disabled = true
		%MultiplierGodlyx10Button.disabled = true
	else:
		buyMultiplied = 1
		%MultiplierGodlyx100Button.disabled = false
		%MultiplierGodlyx10Button.disabled = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	%GodlySpentAmountLabel.text = str(buyAmount * 4)
	%GodlyGainedAmountLabel.text = str(buyAmount)


func _on_godly_convert_buy_button_pressed():
	if(Global.lightSodaMoney >= buyAmount and Global.sodaMoney >= buyAmount and Global.doublePlusSodaMoney >= buyAmount and Global.berryBurstSodaMoney >= buyAmount):
		Global.lightSodaMoney = Global.lightSodaMoney - buyAmount
		Global.sodaMoney = Global.sodaMoney - buyAmount
		Global.doublePlusSodaMoney = Global.doublePlusSodaMoney - buyAmount
		Global.berryBurstSodaMoney = Global.berryBurstSodaMoney - buyAmount
		
		Global.godlySodaMoney = Global.godlySodaMoney + buyAmount


func _on_godly_convert_cancel_button_pressed():
	buyAmount = 0
	%GodlySpentAmountLabel.text = "0"
	%GodlyGainedAmountLabel.text = "0"
