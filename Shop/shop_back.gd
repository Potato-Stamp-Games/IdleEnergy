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

#Updates store prices. Each cost label in the shop needs to be placed here
#Money container updated every frame
func _process(_delta):
	#Shop Equations
	#Light Soda Click Power 1
	lm_CP_CostEq = pow(1 + (2 * Global.lightSodaClickPower), 2)
	ls_CP_CostEq = pow(2 + (2 * Global.lightSodaClickPower), 2)
	#Zap Soda Click Power 1
	zm_CP_CostEq = pow(3 + (2 * Global.zapSodaClickPower), 2)
	zs_CP_CostEq = pow(4 + (2 * Global.zapSodaClickPower), 2)
	#DP Soda Click Power 1
	dpm_CP_CostEq = pow(5 + (3 * Global.doublePlusSodaClickPower), 2)
	dps_CP_CostEq = pow(8 + (2 * Global.doublePlusSodaClickPower), 2)
	#BB Soda Click Power
	bbm_CP_CostEq = pow(10 + (3 * Global.berryBurstSodaClickPower), 2)
	bbs_CP_CostEq = pow(12 + (2 * Global.berryBurstSodaClickPower), 2)
	#Light Soda Auto Click 1
	lm_AC_CostEq = pow(3 + (2 * Global.lightSodaAutoClick), 3)
	ls_AC_CostEq = pow(2 + Global.lightSodaAutoClick, 2)
	#Zap Soda Auto Click 1
	zm_AC_CostEq = pow(4 + (2 * Global.zapSodaAutoClick), 3)
	zs_AC_CostEq = pow(2 + Global.zapSodaAutoClick, 2)
	#DP Soda Auto Click 1
	dpm_AC_CostEq = pow(5 + (2 * Global.doublePlusSodaClickPower), 3)
	dps_AC_CostEq = pow(3 + Global.doublePlusSodaClickPower, 2)
	#BB Soda Auto Click 1
	bbm_AC_CostEq = pow(8 + (2 * Global.berryBurstSodaClickPower), 3)
	bbs_AC_CostEq = pow(4 + Global.berryBurstSodaClickPower, 2)
	#END OF: Shop Equations
	%MoneyLabel.text= str(FuncGlobal.round_to_dec(Global.trueMoney))
	%LightSodaLabel.text = str(FuncGlobal.round_to_dec(Global.lightSodaMoney))
	%ZapSodaLabel.text = str(FuncGlobal.round_to_dec(Global.zapSodaMoney))
	%DoublePlusSodaLabel.text = str(FuncGlobal.round_to_dec(Global.doublePlusSodaMoney))
	%BerryBurstSodaLabel.text = str(FuncGlobal.round_to_dec(Global.berryBurstSodaMoney))
	%GodlySodaLabel.text = str(FuncGlobal.round_to_dec(Global.godlySodaMoney))
	
	#Light Soda Click Cost labels
	%LM_CP_CostLabel.text = str(FuncGlobal.round_to_dec(lm_CP_CostEq))
	%LS_CP_CostLabel.text = str(FuncGlobal.round_to_dec(ls_CP_CostEq))

	#Zap Soda Click Cost labels
	%ZM_CP_CostLabel.text = str(FuncGlobal.round_to_dec(zm_CP_CostEq))
	%ZS_CP_CostLabel.text = str(FuncGlobal.round_to_dec(zs_CP_CostEq))


	#Double Plus Soda Click Power Labels
	%DPM_CP_CostLabel.text = str(FuncGlobal.round_to_dec(dpm_CP_CostEq))
	%DPS_CP_CostLabel.text = str(FuncGlobal.round_to_dec(dps_CP_CostEq))
	
	#Berry Burst Soda Click Power Labels
	%BBM_CP_CostLabel.text = str(FuncGlobal.round_to_dec(bbm_CP_CostEq))
	%BBS_CP_CostLabel.text = str(FuncGlobal.round_to_dec(bbs_CP_CostEq))
	
	#Light Soda Auto Click Cost labels
	%LM_AC_CostLabel.text = str(FuncGlobal.round_to_dec(lm_AC_CostEq))
	%LS_AC_CostLabel.text = str(FuncGlobal.round_to_dec(ls_AC_CostEq))

	#Zap Soda Auto Click Cost labels
	%ZM_AC_CostLabel.text = str(FuncGlobal.round_to_dec(zm_AC_CostEq))
	%ZS_AC_CostLabel.text = str(FuncGlobal.round_to_dec(zs_AC_CostEq))


	#Double Plus Soda Auto Click Power Labels
	%DPM_AC_CostLabel.text = str(FuncGlobal.round_to_dec(dpm_AC_CostEq))
	%DPS_AC_CostLabel.text = str(FuncGlobal.round_to_dec(dps_AC_CostEq))
	
	#Berry Burst Soda Auto Click Power Labels
	%BBM_AC_CostLabel.text = str(FuncGlobal.round_to_dec(bbm_AC_CostEq))
	%BBS_AC_CostLabel.text = str(FuncGlobal.round_to_dec(bbs_AC_CostEq))

#Change scence back to main & deletes this scene
func _on_back_button_pressed():
	Global.ttlAllClicks += 1
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

#changes backbutton sprite when mouse hovers over
func _on_back_button_mouse_entered():
	%BackButtonHoverSprite.show()
	%BackButtonSprite.hide()
func _on_back_button_mouse_exited():
	%BackButtonHoverSprite.hide()
	%BackButtonSprite.show()

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
			%LM_CP_CostLabel.text = str(FuncGlobal.round_to_dec(lm_CP_CostEq))
			%LS_CP_CostLabel.text = str(FuncGlobal.round_to_dec(ls_CP_CostEq))
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
			%ZM_CP_CostLabel.text = str(FuncGlobal.round_to_dec(zm_CP_CostEq))
			%ZS_CP_CostLabel.text = str(FuncGlobal.round_to_dec(zm_CP_CostEq))
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
			%DPM_CP_CostLabel.text = str(FuncGlobal.round_to_dec(dpm_CP_CostEq))
			%DPS_CP_CostLabel.text = str(FuncGlobal.round_to_dec(dps_CP_CostEq))
			Global.ttlAllClicks += 1

#Berry Burst Soda Click Power +1
func _on_berry_burst_soda_click_power_plus1():
	var moneyCostOfUpgrade = bbm_CP_CostEq
	var sodaCostOfUpgrade = bbs_CP_CostEq
	
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.doublePlusSodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.berryBurstSodaMoney = Global.berryBurstSodaMoney - sodaCostOfUpgrade
			Global.berryBurstSodaClickPower += 1
			%BBM_CP_CostLabel.text = str(FuncGlobal.round_to_dec(bbm_CP_CostEq))
			%BBS_CP_CostLabel.text = str(FuncGlobal.round_to_dec(bbs_CP_CostEq))
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
			%LM_AC_CostLabel.text = str(FuncGlobal.round_to_dec(lm_AC_CostEq))
			%LS_AC_CostLabel.text = str(FuncGlobal.round_to_dec(lm_AC_CostEq))
			Global.ttlAllClicks += 1
			Global.lightSodaAuto = true

#Zap Soda Auto Clicker 20% Increase
func _on_zap_soda_ac_1_buy_button_pressed():
	var moneyCostOfUpgrade = zm_AC_CostEq
	var sodaCostOfUpgrade = zs_AC_CostEq
	
	if Global.trueMoney >=  moneyCostOfUpgrade:
		if Global.godlySodaMoney >= sodaCostOfUpgrade:
			Global.trueMoney = Global.trueMoney - moneyCostOfUpgrade
			Global.godlySodaMoney = Global.godlySodaMoney - sodaCostOfUpgrade
			Global.zapSodaAutoClick += 0.2
			%ZM_AC_CostLabel.text = str(FuncGlobal.round_to_dec(zm_AC_CostEq))
			%ZS_AC_CostLabel.text = str(FuncGlobal.round_to_dec(zs_AC_CostEq))
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
			%DPM_AC_CostLabel.text = str(FuncGlobal.round_to_dec(dpm_AC_CostEq))
			%DPS_AC_CostLabel.text = str(FuncGlobal.round_to_dec(dps_AC_CostEq))
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
			%BBM_AC_CostLabel.text = str(FuncGlobal.round_to_dec(bbm_AC_CostEq))
			%BBS_AC_CostLabel.text = str(FuncGlobal.round_to_dec(bbs_AC_CostEq))
			Global.ttlAllClicks += 1
			Global.berryBurstSodaAuto = true
#END OF STORE UPGRADES ------------
