extends Control

#RNG Variables
var rng = RandomNumberGenerator.new()

func _on_rng_timer_timeout():
	#These each call a random number and do no equal the same number. 
	#if number is greater/equal to sodaAlchemy upgrades bought
	if rng.randi_range(1, 8000) <= Global.sodaAlchemy :
		Global.basePotion += 1
	if rng.randi_range(1, 12000) <= Global.sodaAlchemy :
		Global.caffinePowder += 1
	if rng.randi_range(1, 12000) <= Global.sodaAlchemy :
		Global.lightSodaExtract +=  1
	if rng.randi_range(1, 30000) <= Global.sodaAlchemy :
		Global.ChargedCaffine += 1
	if rng.randi_range(1, 35000) <= Global.sodaAlchemy :
		Global.zapSodaExtract += 1
	if rng.randi_range(1, 100000) <= Global.sodaAlchemy :
		Global.doublePlusSodaExtract += 1
	if rng.randi_range(1, 120000) <= Global.sodaAlchemy :
		Global.doubleChargedCaffine += 1
	if rng.randi_range(1, 200000) <= Global.sodaAlchemy :
		Global.berryBurstSodaExtract += 1
	if rng.randi_range(1, 225000) <= Global.sodaAlchemy :
		Global.explosivelyChargedCaffine += 1
	if rng.randi_range(1, 400000) <= Global.sodaAlchemy :
		Global.godlySodaExtract += 1
	if rng.randi_range(1, 550000) <= Global.sodaAlchemy :
		Global.godlyChargedCaffine += 1
