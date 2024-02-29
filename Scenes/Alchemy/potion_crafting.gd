extends ScrollContainer
#RNG Variables
var rng = RandomNumberGenerator.new()
#Currently crafting variables
var fizzyLStart = false
var fizzyZStart = false
var fizzyDPStart = false
var fizzyBBStart = false
var fizzyGStart = false
var bpStart = false
var cPowderStart = false
var dpcPowderStart = false
var ecPowderStart = false
var gcPowderStart = false
#Amount crafted
var fizzyLAmount = 0
var fizzyZAmount = 0
var fizzyDPAmount = 0
var fizzyBBAmount = 0
var fizzyGAmount = 0
var bpAmount = 0
var cPowderAmount = 0
var dpcPowderAmount = 0
var ecPowderAmount = 0
var gcPowderAmount = 0

#Returns true if amount of ingredients is greater than scroll button amount and start is false
#Starts timer, sets progress bar to timer if true
func process_crafting(ing1: int, ing2: int, ing3: int, money: float, start: bool, sb: Node, timer: Node, pb: Node):
	if  sb.value >= 1 and ing1 >= sb.value and ing2 >= sb.value and ing3 >= (sb.value * money) and start == false:
		var timeDeduction = (0.5 * Global.sodaUnity)
		start = true
		timer.wait_time = (timer.wait_time - timeDeduction) * sb.value
		pb.max_value = timer.wait_time
		timer.start()
		
		return start
#processes when crafting timer is done, start returns false
func process_timeout(start: bool, timer: Node, pb: Node):
	start = false
	timer.stop()
	pb.value = 0
	
	return start
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if fizzyLStart == true:
		%FizzyLightPotion_PB.value = %FizzyLTimer.wait_time - (%FizzyLTimer.time_left)
	if fizzyZStart == true:
		%FizzyZapPotion_PB.value = %FizzyZTimer.wait_time - (%FizzyZTimer.time_left)
	if fizzyDPStart == true:
		%FizzyDPPotion_PB.value = %FizzyDPTimer.wait_time - (%FizzyDPTimer.time_left)
	if fizzyBBStart == true:
		%FizzyBBPotion_PB.value = %FizzyBBTimer.wait_time - (%FizzyBBTimer.time_left)
	if fizzyGStart == true:
		%FizzyGodlyPotion_PB.value = %FizzyGodlyTimer.wait_time - (%FizzyGodlyTimer.time_left)
	if bpStart == true:
		%BasePotion_PB.value = %BasePotionTimer.wait_time - (%BasePotionTimer.time_left)
	if cPowderStart == true:
		%ChargedCaffine_PB.value = %ChargedCaffineTimer.wait_time - (%ChargedCaffineTimer.time_left)
	if dpcPowderStart == true:
		%DChargedCaffine_PB.value = %DChargedCaffineTimer.wait_time - (%DChargedCaffineTimer.time_left)
	if ecPowderStart == true:
		%EChargedCaffine_PB.value = %EChargedCaffineTimer.wait_time - (%EChargedCaffineTimer.time_left)
	if gcPowderStart == true:
		%GChargedCaffine_PB.value = %GChargedCaffineTimer.wait_time - (%GChargedCaffineTimer.time_left)
	
#POTION BUTTONS START HERE - POTION BUTTONS START HERE - POTION BUTTONS START HERE
func _on_fizzy_light_potion_btn_pressed():
	if (process_crafting(Global.caffinePowder, Global.basePotion, Global.lightSodaMoney, 5000, 
	fizzyLStart, %FizzyLightPotion_SB, %FizzyLTimer, %FizzyLightPotion_PB)) == true:
		#Currently crafting variable set to true. Minus ingredients used
		fizzyLStart = true
		fizzyLAmount = %FizzyLightPotion_SB.value
		Global.caffinePowder -= fizzyLAmount
		Global.basePotion -= fizzyLAmount
		Global.lightSodaMoney -= 5000 * fizzyLAmount

func _on_fizzy_l_timer_timeout():
	fizzyLStart = process_timeout(fizzyLStart, %FizzyLTimer, %FizzyLightPotion_PB)
	#Currently crafting variable set to false. Add potion crafted
	Global.fizzyLightPotion += fizzyLAmount
	fizzyLAmount = 0


func _on_fizzy_zap_potion_btn_pressed():
	if (process_crafting(Global.chargedCaffinePowder, Global.basePotion, Global.zapSodaMoney, 10000, 
	fizzyZStart, %FizzyZapPotion_SB, %FizzyZTimer, %FizzyZapPotion_PB)) == true:
		#Currently crafting variable set to true. Minus ingredients used
		fizzyZStart = true
		fizzyZAmount = %FizzyZapPotion_SB.value
		if (rng.randi_range(1, 200) > Global.essenseTime):
			Global.chargedCaffinePowder -= fizzyZAmount
			Global.basePotion -= fizzyZAmount
			Global.zapSodaMoney -= 10000 * fizzyZAmount


func _on_fizzy_z_timer_timeout():
	fizzyZStart = process_timeout(fizzyZStart, %FizzyZTimer, %FizzyZapPotion_PB)
	#Currently crafting variable set to false. Add potion crafted
	Global.fizzyZapPotion += fizzyZAmount
	fizzyZAmount = 0


func _on_fizzy_dp_potion_btn_pressed():
	if (process_crafting(Global.doubleChargedCaffinePowder, Global.basePotion, Global.doublePlusSodaMoney, 20000, 
	fizzyDPStart, %FizzyDPPotion_SB, %FizzyDPTimer, %FizzyDPPotion_PB)) == true:
		#Currently crafting variable set to true. Minus ingredients used
		fizzyDPStart = true
		fizzyDPAmount = %FizzyDPPotion_SB.value
		if (rng.randi_range(1, 200) > Global.essenseTime):
			Global.doubleChargedCaffinePowder -= fizzyDPAmount
			Global.basePotion -= fizzyDPAmount
			Global.doublePlusSodaMoney -= 20000 * fizzyDPAmount


func _on_fizzy_dp_timer_timeout():
	fizzyDPStart = process_timeout(fizzyDPStart, %FizzyDPTimer, %FizzyDPPotion_PB)
	#Currently crafting variable set to false. Add potion crafted
	Global.fizzyDoublePlusPotion += fizzyDPAmount
	fizzyDPAmount = 0


func _on_fizzy_bb_potion_btn_pressed():
	if (process_crafting(Global.explosivelyChargedCaffinePowder, Global.basePotion, Global.berryBurstSodaMoney, 35000, 
	fizzyBBStart, %FizzyBBPotion_SB, %FizzyBBTimer, %FizzyBBPotion_PB)) == true:
		#Currently crafting variable set to true. Minus ingredients used
		fizzyBBStart = true
		fizzyBBAmount = %FizzyBBPotion_SB.value
		if (rng.randi_range(1, 200) > Global.essenseTime):
			Global.explosivelyChargedCaffinePowder -= fizzyBBAmount
			Global.basePotion -= fizzyBBAmount
			Global.doublePlusSodaMoney -= 35000 * fizzyBBAmount


func _on_fizzy_bb_timer_timeout():
	fizzyBBStart = process_timeout(fizzyBBStart, %FizzyBBTimer, %FizzyBBPotion_PB)
	#Currently crafting variable set to false. Add potion crafted
	Global.fizzyBerryBurstPotion += fizzyBBAmount
	fizzyBBAmount = 0


func _on_fizzy_godly_potion_btn_pressed():
	if (process_crafting(Global.godlyChargedCaffinePowder, Global.basePotion, Global.godlySodaMoney, 50000, 
	fizzyGStart, %FizzyGodlyPotion_SB, %FizzyGodlyTimer, %FizzyGodlyPotion_PB)) == true:
		#Currently crafting variable set to true. Minus ingredients used
		fizzyGStart = true
		fizzyGAmount = %FizzyGodlyPotion_SB.value
		if (rng.randi_range(1, 200) > Global.essenseTime):
			Global.godlyChargedCaffinePowder -= fizzyGAmount
			Global.basePotion -= fizzyGAmount
			Global.godlySodaMoney -= 50000 * fizzyGAmount


func _on_fizzy_godly_timer_timeout():
	fizzyGStart = process_timeout(fizzyGStart, %FizzyGodlyTimer, %FizzyGodlyPotion_PB)
	#Currently crafting variable set to false. Add potion crafted
	Global.fizzyGodlyPotion += fizzyGAmount
	fizzyGAmount = 0


func _on_base_potion_btn_pressed():
	if (process_crafting(Global.lightSodaExtract, Global.lightSodaExtract, Global.lightSodaMoney, 5000, 
	bpStart, %BasePotion_SB, %BasePotionTimer, %BasePotion_PB)) == true:
		#Currently crafting variable set to true. Minus ingredients used
		bpStart = true
		bpAmount = %BasePotion_SB.value
		if (rng.randi_range(1, 200) > Global.essenseTime):
			Global.lightSodaExtract -= bpAmount
			Global.lightSodaMoney -= 5000 * bpAmount


func _on_base_potion_timer_timeout():
	bpStart = process_timeout(bpStart, %BasePotionTimer, %BasePotion_PB)
	#Currently crafting variable set to false. Add potion crafted
	Global.basePotion += bpAmount
	bpAmount = 0.


func _on_charged_caffine_btn_pressed():
	if (process_crafting(Global.caffinePowder, Global.zapSodaExtract, Global.zapSodaMoney, 10000, 
	cPowderStart, %ChargedCaffine_SB, %ChargedCaffineTimer, %ChargedCaffine_PB)) == true:
		#Currently crafting variable set to true. Minus ingredients used
		cPowderStart = true
		cPowderAmount = %ChargedCaffine_SB.value
		if (rng.randi_range(1, 200) > Global.essenseTime):
			Global.caffinePowder -= cPowderAmount
			Global.zapSodaExtract -= cPowderAmount
			Global.zapSodaMoney -= 10000 * cPowderAmount


func _on_charged_caffine_timer_timeout():
	cPowderStart = process_timeout(bpStart, %ChargedPowderTimer, %ChargedPowder_PB)
	#Currently crafting variable set to false. Add potion crafted
	Global.chargedCaffinePowder += cPowderAmount
	cPowderAmount = 0.


func _on_d_charged_caffine_btn_pressed():
	if (process_crafting(Global.chargedCaffinePowder, Global.doublePlusSodaExtract, Global.doublePlusSodaMoney, 10000, 
	dpcPowderStart, %DChargedCaffine_SB, %DChargedCaffineTimer, %DChargedCaffine_PB)) == true:
		#Currently crafting variable set to true. Minus ingredients used
		dpcPowderStart = true
		dpcPowderAmount = %DChargedCaffine_SB.value
		if (rng.randi_range(1, 200) > Global.essenseTime):
			Global.chargedCaffinePowder -= dpcPowderAmount
			Global.doublePlusSodaExtract -= dpcPowderAmount
			Global.zapSodaMoney -= 10000 * cPowderAmount


func _on_d_charged_caffine_timer_timeout():
	dpcPowderStart = process_timeout(dpcPowderStart, %DChargedPowderTimer, %DChargedPowder_PB)
	#Currently crafting variable set to false. Add potion crafted
	Global.chargedCaffinePowder += dpcPowderAmount
	dpcPowderAmount = 0.


func _on_e_charged_caffine_btn_pressed():
	if (process_crafting(Global.doubleChargedCaffinePowder, Global.berryBurstSodaExtract, Global.berryBurstSodaMoney, 15000, 
	ecPowderStart, %EChargedCaffine_SB, %EChargedCaffineTimer, %EChargedCaffine_PB)) == true:
		#Currently crafting variable set to true. Minus ingredients used
		ecPowderStart = true
		ecPowderAmount = %EChargedCaffine_SB.value
		if (rng.randi_range(1, 200) > Global.essenseTime):
			Global.doubleChargedCaffinePowder -= ecPowderAmount
			Global.berryBurstSodaExtract -= ecPowderAmount
			Global.berryBurstSodaMoney -= 15000 * ecPowderAmount


func _on_e_charged_timer_timeout():
	ecPowderStart = process_timeout(ecPowderStart, %EChargedPowderTimer, %EChargedPowder_PB)
	#Currently crafting variable set to false. Add potion crafted
	Global.explosivelyChargedCaffinePowder += ecPowderAmount
	ecPowderAmount = 0


func _on_g_charged_caffine_btn_pressed():
	if (process_crafting(Global.explosivelyChargedCaffinePowder, Global.godlySodaExtract, Global.godlySodaMoney, 25000, 
	gcPowderStart, %GChargedCaffine_SB, %GChargedCaffineTimer, %GChargedCaffine_PB)) == true:
		#Currently crafting variable set to true. Minus ingredients used
		gcPowderStart = true
		gcPowderAmount = %GChargedCaffine_SB.value
		if (rng.randi_range(1, 200) > Global.essenseTime):
			Global.explosivelyChargedCaffinePowder -= ecPowderAmount
			Global.godlySodaExtract -= ecPowderAmount
			Global.godlySodaMoney -= 25000 * ecPowderAmount


func _on_g_charged_caffine_timer_timeout():
	gcPowderStart = process_timeout(gcPowderStart, %GChargedPowderTimer, %GChargedPowder_PB)
	#Currently crafting variable set to false. Add potion crafted
	Global.godlyChargedCaffinePowder += gcPowderAmount
	gcPowderAmount = 0
