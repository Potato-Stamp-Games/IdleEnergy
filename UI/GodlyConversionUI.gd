extends BoxContainer
class_name GodlyConversionUI

var buyAmount = 0
var buyMultiplied = 1

func _on_godly_x_1_button_pressed():
	buyAmount = buyAmount + (1 * buyMultiplied)
	Global.ttlAllClicks += 1

func _on_godly_x_10_button_pressed():
	buyAmount = buyAmount + (10 * buyMultiplied)
	Global.ttlAllClicks += 1

func _on_godly_x_100_button_pressed():
	buyAmount = buyAmount + (100 * buyMultiplied)
	Global.ttlAllClicks += 1

func _on_godly_x_1000_button_pressed():
	buyAmount = buyAmount + (1000 * buyMultiplied)
	Global.ttlAllClicks += 1

func _on_godly_x_10000_button_pressed():
	buyAmount = buyAmount + (10000 * buyMultiplied)
	Global.ttlAllClicks += 1

func _on_multiplier_godly_x_10_button_toggled(toggled_on):
	if toggled_on == true:
		buyMultiplied = 10
		%MultiplierGodlyx100Button.disabled = true
		%MultiplierGodlyx1000Button.disabled = true
		Global.ttlAllClicks += 1
	else:
		buyMultiplied = 1
		%MultiplierGodlyx100Button.disabled = false
		%MultiplierGodlyx1000Button.disabled = false
		Global.ttlAllClicks += 1

func _on_multiplier_godly_x_100_button_toggled(toggled_on):
	if toggled_on == true:
		buyMultiplied = 100
		%MultiplierGodlyx10Button.disabled = true
		%MultiplierGodlyx1000Button.disabled = true
		Global.ttlAllClicks += 1
	else:
		buyMultiplied = 1
		%MultiplierGodlyx10Button.disabled = false
		%MultiplierGodlyx1000Button.disabled = false
		Global.ttlAllClicks += 1

func _on_multiplier_godly_x_1000_button_toggled(toggled_on):
	if toggled_on == true:
		buyMultiplied = 1000
		%MultiplierGodlyx100Button.disabled = true
		%MultiplierGodlyx10Button.disabled = true
		Global.ttlAllClicks += 1
	else:
		buyMultiplied = 1
		%MultiplierGodlyx100Button.disabled = false
		%MultiplierGodlyx10Button.disabled = false
		Global.ttlAllClicks += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	%GodlySpentAmountLabel.text = str(buyAmount * 4)
	%GodlyGainedAmountLabel.text = str(buyAmount)

func _on_godly_convert_buy_button_pressed():
	if(Global.lightSodaMoney >= buyAmount and Global.zapSodaMoney >= buyAmount and Global.doublePlusSodaMoney >= buyAmount and Global.berryBurstSodaMoney >= buyAmount):
		Global.lightSodaMoney = Global.lightSodaMoney - buyAmount
		Global.zapSodaMoney = Global.zapSodaMoney - buyAmount
		Global.doublePlusSodaMoney = Global.doublePlusSodaMoney - buyAmount
		Global.berryBurstSodaMoney = Global.berryBurstSodaMoney - buyAmount
		
		Global.godlySodaMoney += buyAmount
		Global.ttlGodlySodaMoney += buyAmount
		Global.ttlAllClicks += 1

func _on_godly_convert_cancel_button_pressed():
	buyAmount = 0
	%GodlySpentAmountLabel.text = "0"
	%GodlyGainedAmountLabel.text = "0"
	Global.ttlAllClicks += 1
