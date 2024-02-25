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
#Godly Favor
var godlyFM_CostEq = 0
var godlyFS_CostEq = 0
#NewAge
var newAgeM_CostEq = 0
var newAgeS_CostEq = 0
#Quantum Soda
var quantumSodaM_CostEq = 0
var quantumSodaS_CostEq = 0
#Magic Soda
var magicSodaM_CostEq = 0
var magicSodaS_CostEq = 0
#Time In Soda
var timeInSodaM_CostEq = 0
var timeInSodaS_CostEq = 0
#Soda Alchemy
var sodaAlchemyM_CostEq = 0
var sodaAlchemyS_CostEq = 0
#Soda of unity
var sodaUnityM_CostEq = 0
var sodaUnityS_CostEq = 0
#Essense of time
var essenseTimeM_CostEq = 0
var essenseTimeS_CostEq = 0
#SFX
const bubbleSfx = preload("res://audio/SFX/pop.wav")
#Updates store prices. Each cost label in the shop needs to be placed here
#Money container updated every frame
func _process(_delta):
	#Shop Equations
	#Light Soda Click Power 1
	lm_CP_CostEq = 10 + pow(2 * (Global.lightSodaClickPower - 1), 3)
	ls_CP_CostEq = 10 + pow(2 * (Global.lightSodaClickPower), 3)
	#Zap Soda Click Power 1
	zm_CP_CostEq = 40 + pow(2 * (Global.zapSodaClickPower - 1), 3)
	zs_CP_CostEq = 20 + pow(2 * (Global.zapSodaClickPower - 1), 3)
	#DP Soda Click Power 1
	dpm_CP_CostEq = 160 + pow(2 * (Global.doublePlusSodaClickPower - 1), 3)
	dps_CP_CostEq = 30 + pow(2 * (Global.doublePlusSodaClickPower - 1), 3)
	#BB Soda Click Power
	bbm_CP_CostEq = 640 + pow(2 * (Global.berryBurstSodaClickPower - 1), 3)
	bbs_CP_CostEq = 40 + pow(2 * (Global.berryBurstSodaClickPower - 1), 3)
	#Light Soda Auto Click 1
	lm_AC_CostEq = 1500 + pow((5 * Global.lightSodaAutoClick), 3)
	ls_AC_CostEq = 10 + pow((3 * Global.lightSodaAutoClick), 3)
	#Zap Soda Auto Click 1
	zm_AC_CostEq = 2000 + pow((5 * Global.zapSodaAutoClick), 3)
	zs_AC_CostEq = 20 + pow((3 * Global.zapSodaAutoClick), 3)
	#DP Soda Auto Click 1
	dpm_AC_CostEq = 2500 + pow((5 * Global.doublePlusSodaAutoClick), 3)
	dps_AC_CostEq = 30 + pow((4 * Global.doublePlusSodaAutoClick), 3)
	#BB Soda Auto Click 1
	bbm_AC_CostEq = 3000 + pow((5 * Global.berryBurstSodaAutoClick), 3)
	bbs_AC_CostEq = 40 + pow((4* Global.berryBurstSodaAutoClick), 3)
	#Godly Favor
	godlyFM_CostEq = 15000 + pow(8 * Global.godlyFavor, 4)
	godlyFS_CostEq = 250 + pow(6 * Global.godlyFavor, 3)
	#NewAge
	newAgeM_CostEq = 10000 + pow(8 * Global.newAge, 3)
	newAgeS_CostEq = 500 + pow((6 * Global.newAge), 3)
	#Quantum Soda
	quantumSodaM_CostEq = 12000 + pow((10 * Global.quantumSoda), 3)
	quantumSodaS_CostEq = 1200 + pow((8 * Global.quantumSoda), 3)
	#Magic Soda
	magicSodaM_CostEq = 12000 + pow(6 * Global.magicSoda, 3)
	magicSodaS_CostEq = 650 + pow((8 * Global.magicSoda), 3)
	#Time In Soda
	timeInSodaM_CostEq = 15000 + pow((8 * Global.timeInSoda), 3)
	timeInSodaS_CostEq = 2500 + pow((10 * Global.timeInSoda), 3)
	#Time In Soda
	sodaAlchemyM_CostEq = 50000 + pow((10 * Global.sodaAlchemy), 3)
	sodaAlchemyS_CostEq = 3000 + pow((8 * Global.sodaAlchemy), 3)
	#Soda of Unity
	sodaUnityM_CostEq = 75000 + pow((10 * Global.sodaUnity), 3)
	sodaUnityS_CostEq = 4500 + pow((8 * Global.sodaUnity), 3)
	#Essense of time
	essenseTimeM_CostEq = 50000 + pow((10 * Global.essenseTime), 3)
	essenseTimeS_CostEq = 10000 + pow((8 * Global.essenseTime), 3)
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
	#Quantum Soda
	%QuantumSodaM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[quantumSodaM_CostEq]))
	%QuantumSodaS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[quantumSodaS_CostEq]))
	#Time In Soda
	%TimeInSodaM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[timeInSodaM_CostEq]))
	%TimeInSodaS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[timeInSodaS_CostEq]))
	#Magic Soda
	%MagicSodaM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[magicSodaM_CostEq]))
	%MagicSodaS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[magicSodaS_CostEq]))
	#Soda Unity
	%SodaAlchemyM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[sodaAlchemyM_CostEq]))
	%SodaAlchemyS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[sodaAlchemyS_CostEq]))
	#Soda of Unity
	%SodaUnityM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[sodaUnityM_CostEq]))
	%SodaUnityS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[sodaUnityS_CostEq]))
	#Essense of time
	%EssenseTimeM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[essenseTimeM_CostEq]))
	%EssenseTimeS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[essenseTimeS_CostEq]))
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
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()

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
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
			
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
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
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
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
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
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
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
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
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
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
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
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
func _on_godly_favor_buy_button_pressed():
	var moneyCostOfUpgrade = godlyFM_CostEq
	var sodaCostOfUpgrade = godlyFS_CostEq
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.godlySodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.godlySodaMoney = Global.godlySodaMoney - sodaCostOfUpgrade
			Global.godlyFavor += 0.1
			%GodlyFM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[godlyFM_CostEq]))
			%GodlyFS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[godlyFS_CostEq]))
			Global.ttlAllClicks += 1
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
func _on_new_age_buy_button_pressed():
	var moneyCostOfUpgrade = newAgeM_CostEq
	var sodaCostOfUpgrade = newAgeS_CostEq
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.zapSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.zapSodaMoney = Global.zapSodaMoney - sodaCostOfUpgrade
			Global.newAge += 1
			%NewAgeS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[newAgeM_CostEq]))
			%NewAgeM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[newAgeS_CostEq]))
			Global.ttlAllClicks += 1
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
func _on_quantum_soda_buy_button_pressed():
	var moneyCostOfUpgrade = quantumSodaM_CostEq
	var sodaCostOfUpgrade = quantumSodaS_CostEq
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.berryBurstSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.berryBurstSodaMoney = Global.berryBurstSodaMoney - sodaCostOfUpgrade
			Global.quantumSoda += 1
			%QuantumSodaM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[quantumSodaM_CostEq]))
			%QuantumSodaS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[quantumSodaS_CostEq]))
			Global.ttlAllClicks += 1
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
func _on_magic_soda_buy_button_pressed():
	var moneyCostOfUpgrade = magicSodaM_CostEq
	var sodaCostOfUpgrade = magicSodaS_CostEq
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.zapSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.zapSodaMoney = Global.zapSodaMoney - sodaCostOfUpgrade
			Global.magicSoda += 1
			%MagicSodaM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[magicSodaM_CostEq]))
			%MagicSodaS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[magicSodaS_CostEq]))
			Global.ttlAllClicks += 1
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
func _on_time_in_soda_buy_button_pressed():
	var moneyCostOfUpgrade = timeInSodaM_CostEq
	var sodaCostOfUpgrade = timeInSodaS_CostEq
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.lightSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.lightSodaMoney = Global.lightSodaMoney - sodaCostOfUpgrade
			Global.timeInSoda += 1
			%TimeInSodaM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[timeInSodaM_CostEq]))
			%TimeInSodaS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[timeInSodaS_CostEq]))
			Global.ttlAllClicks += 1
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
func _on_soda_alchemy_buy_button_pressed():
	var moneyCostOfUpgrade = sodaAlchemyM_CostEq
	var sodaCostOfUpgrade = sodaAlchemyS_CostEq
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.lightSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.lightSodaMoney = Global.lightSodaMoney - sodaCostOfUpgrade
			Global.sodaAlchemy += 1
			%SodaAlchemyM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[sodaAlchemyM_CostEq]))
			%SodaAlchemyS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[sodaAlchemyS_CostEq]))
			Global.ttlAllClicks += 1
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
func _on_soda_of_unity_buy_button_pressed():
	var moneyCostOfUpgrade = sodaUnityM_CostEq
	var sodaCostOfUpgrade = sodaUnityS_CostEq
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.godlySodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.godlySodaMoney = Global.godlySodaMoney - sodaCostOfUpgrade
			Global.sodaUnity += 1
			%SodaUnityM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[sodaUnityM_CostEq]))
			%SodaUnityS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[sodaUnityS_CostEq]))
			Global.ttlAllClicks += 1
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()


func _on_essense_of_time_buy_button_pressed():
	var moneyCostOfUpgrade = essenseTimeM_CostEq
	var sodaCostOfUpgrade = essenseTimeS_CostEq
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.godlySodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.godlySodaMoney = Global.godlySodaMoney - sodaCostOfUpgrade
			Global.essenseTime += 1
			%EssenseTimeM_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[essenseTimeM_CostEq]))
			%EssenseTimeS_CostLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[essenseTimeS_CostEq]))
			Global.ttlAllClicks += 1
			$ShopSoundEffects.stream = bubbleSfx
			$ShopSoundEffects.play()
