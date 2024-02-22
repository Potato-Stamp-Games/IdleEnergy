extends Control
class_name shop_back

#Local Equation Variables

#Click Power
var lm_CP_CostEq = 0
var ls_CP_CostEq = 0
var zm_CP_CostEq = 0
var zs_CP_CostEq = 0
var dpm_CP_CostEq = 0
var dps_CP_CostEq = 0
var bbm_CP_CostEq = 0
var bbs_CP_CostEq = 0

#Auto Click
var lm_AC_CostEq = 0
var ls_AC_CostEq = 0
var zm_AC_CostEq = 0
var zs_AC_CostEq = 0
var dpm_AC_CostEq = 0
var dps_AC_CostEq = 0
var bbm_AC_CostEq = 0
var bbs_AC_CostEq = 0

#Tier 2
#GodlyFavor
var godlyFM_CostEq = 0
var godlyFS_CostEq = 0
#NewAge
var newAgeM_CostEq = 0
var newAgeS_CostEq = 0

#Updates store prices. Each cost label in the shop needs to be placed here
#Money container updated every frame
func _process(_delta):
	#Shop Equations
	#Light Soda Click Power 1
	lm_CP_CostEq = pow(1 + (2 * Global.lightSodaClickPower), 2)
	ls_CP_CostEq = pow(2 + (3 * Global.lightSodaClickPower), 2)
	#Zap Soda Click Power 1
	zm_CP_CostEq = pow(3 + (2 * Global.zapSodaClickPower), 2)
	zs_CP_CostEq = pow(4 + (3 * Global.zapSodaClickPower), 2)
	#DP Soda Click Power 1
	dpm_CP_CostEq = pow(5 + (3 * Global.doublePlusSodaClickPower), 2)
	dps_CP_CostEq = pow(8 + (3 * Global.doublePlusSodaClickPower), 2)
	#BB Soda Click Power
	bbm_CP_CostEq = pow(10 + (3 * Global.berryBurstSodaClickPower), 2)
	bbs_CP_CostEq = pow(12 + (3 * Global.berryBurstSodaClickPower), 2)
	#Light Soda Auto Click 1
	lm_AC_CostEq = pow(8 + (3 * Global.lightSodaAutoClick), 3)
	ls_AC_CostEq = pow(1 + (3 *Global.lightSodaAutoClick), 3)
	#Zap Soda Auto Click 1
	zm_AC_CostEq = pow(10 + (3 * Global.zapSodaAutoClick), 3)
	zs_AC_CostEq = pow(2 + (3 * Global.zapSodaAutoClick), 3)
	#DP Soda Auto Click 1
	dpm_AC_CostEq = pow(10 + (4 * Global.doublePlusSodaAutoClick), 3)
	dps_AC_CostEq = pow(1 + (4 * Global.doublePlusSodaAutoClick), 3)
	#BB Soda Auto Click 1
	bbm_AC_CostEq = pow(12 + (4 * Global.berryBurstSodaAutoClick), 3)
	bbs_AC_CostEq = pow(2 + (4* Global.berryBurstSodaAutoClick), 3)
	#Godly Favor
	godlyFM_CostEq = pow(8 + (4 * Global.godlyFavor), 4)
	godlyFS_CostEq = pow(2 + (4 * Global.godlyFavor), 3)
	#NewAge
	newAgeM_CostEq = pow(6 + (4 * Global.godlyFavor), 4)
	newAgeS_CostEq = pow(8 + (3 * Global.godlyFavor), 3)
	#END OF: Shop Equations

	#Light Soda Click Cost labels
	%LM_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[lm_CP_CostEq]))
	%LS_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[ls_CP_CostEq]))
	
	#Zap Soda Click Cost labels
	%ZM_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[zm_CP_CostEq]))
	%ZS_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[zs_CP_CostEq]))
	
	#Double Plus Soda Click Power Labels
	%DPM_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[dpm_CP_CostEq]))
	%DPS_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[dps_CP_CostEq]))
	
	#Berry Burst Soda Click Power Labels
	%BBM_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[bbm_CP_CostEq]))
	%BBS_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[bbs_CP_CostEq]))
	
	#Light Soda Auto Click Cost labels
	%LM_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[lm_AC_CostEq]))
	%LS_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[ls_AC_CostEq]))

	#Zap Soda Auto Click Cost labels
	%ZM_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[zm_AC_CostEq]))
	%ZS_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[zs_AC_CostEq]))
	
	#Double Plus Soda Auto Click Power Labels
	%DPM_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[dpm_AC_CostEq]))
	%DPS_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[dps_AC_CostEq]))
	
	#Berry Burst Soda Auto Click Power Labels
	%BBM_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[bbm_AC_CostEq]))
	%BBS_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[bbs_AC_CostEq]))
	
	#Godly Favor
	%GodlyFM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[godlyFM_CostEq]))
	%GodlyFS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[godlyFS_CostEq]))
	#New Age
	%NewAgeM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[newAgeM_CostEq]))
	%NewAgeS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[newAgeS_CostEq]))

#STORE UPGRADES--------------------------------------------------------------------------------------------
#Light Soda Click Power +1
func _on_light_soda_click_power_plus1():
	var moneyCostOfUpgrade = lm_CP_CostEq
	var sodaCostOfUpgrade = ls_CP_CostEq
	
	if Global.trueMoney >= moneyCostOfUpgrade:
		if Global.lightSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.lightSodaMoney = Global.lightSodaMoney - sodaCostOfUpgrade
			Global.lightSodaClickPower += 1
			%LM_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[lm_CP_CostEq]))
			%LS_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[ls_CP_CostEq]))
			Global.ttlAllClicks += 1

#Zap Soda Click Power +1
func _on_zap_soda_click_power_plus1():	
	var moneyCostOfUpgrade = zm_CP_CostEq
	var sodaCostOfUpgrade = zs_CP_CostEq
	
	if Global.trueMoney >= moneyCostOfUpgrade:
		if Global.zapSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.zapSodaMoney = Global.zapSodaMoney - sodaCostOfUpgrade
			Global.zapSodaClickPower += 1
			%ZM_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[zm_CP_CostEq]))
			%ZS_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[zm_CP_CostEq]))
			Global.ttlAllClicks += 1

#Double Plus Soda Click Power +1
func _on_double_plus_soda_click_power_plus1():
	var moneyCostOfUpgrade = dpm_CP_CostEq
	var sodaCostOfUpgrade = dps_CP_CostEq
	
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.doublePlusSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.doublePlusSodaMoney = Global.doublePlusSodaMoney - sodaCostOfUpgrade
			Global.doublePlusSodaClickPower += 1
			%DPM_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[dpm_CP_CostEq]))
			%DPS_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[dps_CP_CostEq]))
			Global.ttlAllClicks += 1

#Berry Burst Soda Click Power +1
func _on_berry_burst_soda_click_power_plus1():
	var moneyCostOfUpgrade = bbm_CP_CostEq
	var sodaCostOfUpgrade = bbs_CP_CostEq
	print(moneyCostOfUpgrade)
	print(sodaCostOfUpgrade)
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.berryBurstSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.berryBurstSodaMoney = Global.berryBurstSodaMoney - sodaCostOfUpgrade
			Global.berryBurstSodaClickPower += 1
			%BBM_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[bbm_CP_CostEq]))
			%BBS_CP_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[bbs_CP_CostEq]))
			Global.ttlAllClicks += 1

#Light Soda Auto Clicker 20% Increase
func _on_light_soda_ac_1_buy_button_pressed():
	var moneyCostOfUpgrade = lm_AC_CostEq
	var sodaCostOfUpgrade = ls_AC_CostEq
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.godlySodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.godlySodaMoney = Global.godlySodaMoney - sodaCostOfUpgrade
			Global.lightSodaAutoClick += 0.2
			%LM_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[lm_AC_CostEq]))
			%LS_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[lm_AC_CostEq]))
			
			Global.ttlAllClicks += 1
			Global.lightSodaAuto = true
			print(Global.lightSodaAuto)

#Zap Soda Auto Clicker 20% Increase
func _on_zap_soda_ac_1_buy_button_pressed():
	var moneyCostOfUpgrade = zm_AC_CostEq
	var sodaCostOfUpgrade = zs_AC_CostEq
	
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.godlySodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.godlySodaMoney = Global.godlySodaMoney - sodaCostOfUpgrade
			Global.zapSodaAutoClick += 0.2
			%ZM_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[zm_AC_CostEq]))
			%ZS_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[zs_AC_CostEq]))
			Global.ttlAllClicks += 1
			Global.zapSodaAuto = true

#DP Soda Auto Clicker 20% Increase
func _on_dp_soda_ac_1_buy_button_pressed():
	var moneyCostOfUpgrade = dpm_AC_CostEq
	var sodaCostOfUpgrade = dps_AC_CostEq
	
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.godlySodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.godlySodaMoney = Global.godlySodaMoney - sodaCostOfUpgrade
			Global.doublePlusSodaAutoClick += 0.2
			%DPM_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[dpm_AC_CostEq]))
			%DPS_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[dps_AC_CostEq]))
			Global.ttlAllClicks += 1
			Global.doublePlusSodaAuto = true

#Bery Burst Auto Clicker 20% Increase
func _on_bb_soda_ac_1_buy_button_pressed():
	var moneyCostOfUpgrade = bbm_AC_CostEq
	var sodaCostOfUpgrade = bbs_AC_CostEq
	
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.godlySodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.godlySodaMoney = Global.godlySodaMoney - sodaCostOfUpgrade
			Global.berryBurstSodaAutoClick += 0.2
			%BBM_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[bbm_AC_CostEq]))
			%BBS_AC_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[bbs_AC_CostEq]))
			Global.ttlAllClicks += 1
			Global.berryBurstSodaAuto = true

func _on_godly_favor_buy_button_pressed():
	var moneyCostOfUpgrade = godlyFM_CostEq
	var sodaCostOfUpgrade = godlyFS_CostEq
	
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.godlySodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.godlySodaMoney = Global.godlySodaMoney - sodaCostOfUpgrade
			Global.godlyFavor += 1
			%GodlyFM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[godlyFM_CostEq]))
			%GodlyFS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[godlyFS_CostEq]))
			Global.ttlAllClicks += 1


func _on_new_age_buy_button_pressed():
	var moneyCostOfUpgrade = newAgeM_CostEq
	var sodaCostOfUpgrade = newAgeS_CostEq
	
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.godlySodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.godlySodaMoney = Global.godlySodaMoney - sodaCostOfUpgrade
			Global.newAge += 1
			%newAge_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[newAgeM_CostEq]))
			%newAge_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[newAgeS_CostEq]))
			Global.ttlAllClicks += 1
