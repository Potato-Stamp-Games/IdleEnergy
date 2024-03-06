extends Node
class_name FuncGlobal
#Global functions

static func add_comma_to_float(value: float) -> String:
	# Convert value to string.
	var str_value: String = str(value)
	
	# Check if the value is positive or negative.
	# Use index 0(excluded) if positive to avoid comma at the beginning.
	# Use index 1(excluded) if negative to avoid comma after the - sign.
	var loop_end: int = 0 if value > -0.001 else 1
	
	# Set default value to 3 since commas has interval of 3.
	var loop_start: int = 3
	
	# Look for the decimal point by looping backward.
	# Use this when the characters of the decimal part
	# are lower than the whole number part.
	for i in range(str_value.length()-1, -1, -1):
		if str_value[i] == ".":
			loop_start += (str_value.length() - i)
			break;

	# Loop to look for the decimal point.
	# Use this when the characters of the decimal part
	# are more than the whole number part.
#	for i in str_value.length():
#		if str_value[i] == ".":
#			loop_start += (str_value.length() - i)
#			break;
	
	# Loop backward starting at the last 3 digits of the whole number,
	# add comma then, repeat every 3rd step.
	for i in range(str_value.length()-loop_start, loop_end, -3):
		str_value = str_value.insert(i, ",")
	
	# Return the formatted string.
	return str_value

static func process_click(clickPow, weatherMultiplier):
	#RNG Variables
	var rng = RandomNumberGenerator.new()
	var sodaMoney = 0
	#Creates values based on most recent in global.gd
	var newAge = Global.newAge * 1.5
	var trueMoney = Global.trueMoney
	var quantumSoda = Global.quantumSoda
	var doubleClick = 1
	#double click rng upgrade
	if rng.randi_range(1, 500) <= quantumSoda :
		doubleClick	= 2
	#Magic Soda RNG upgrade
	var sodaSelect = rng.randi_range(0, 3)
	if sodaSelect == 0:
		Global.lightSodaMoney += Global.magicSoda * 2
	elif sodaSelect == 1:
		Global.zapSodaMoney += Global.magicSoda * 2
	elif sodaSelect == 2:
		Global.doublePlusSodaMoney += Global.magicSoda * 2
	elif sodaSelect == 3:
		Global.berryBurstSodaMoney += Global.magicSoda * 2
	#Calculates the new value based on click power
	sodaMoney += ((clickPow + Global.baseClickPower + newAge) * doubleClick) * (Global.activePotionPower + weatherMultiplier)#A
	Global.trueMoney += ((clickPow + Global.baseMoneyPower) * doubleClick) * (Global.activePotionPower + weatherMultiplier)#B
	Global.godlySodaMoney += Global.godlyFavor
	#Sets total values
	Global.ttlTrueMoney += ((clickPow + Global.baseMoneyPower) * doubleClick) * (Global.activePotionPower + weatherMultiplier)#B
	Global.ttlAllClicks += 1
	#Reset double click value back to original value until next rng event
	doubleClick = 1
	return sodaMoney

static func process_auto_click(clickPow, autoClickPow, weatherMultiplier):
		#RNG Variables
	var rng = RandomNumberGenerator.new()
	#Creates values based on most recent in global.gd
	var doubleClickA = 1
	#Creates values based on most recent in global.gd
	var newAge = Global.newAge
	var trueMoney = Global.trueMoney
	var sodaMoney = 0
	#double click rng upgrade
	if rng.randi_range(1, 500) <= Global.quantumSoda:
		doubleClickA = 2
	#Sets the new value for each money type
	sodaMoney += ((Global.baseClickPower + clickPow ) * autoClickPow + (newAge * 1.5)* weatherMultiplier) * doubleClickA #A
	Global.trueMoney += (((Global.baseMoneyPower + clickPow ) * autoClickPow) * weatherMultiplier) * doubleClickA #B
	Global.godlySodaMoney += Global.godlyFavor
	#Sets new stat values
	Global.ttlTrueMoney += (((Global.baseMoneyPower + clickPow) * autoClickPow) * weatherMultiplier) * doubleClickA #B
	return sodaMoney
