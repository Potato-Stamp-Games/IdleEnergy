#global
extends Node

# variables for soda money
var trueMoney = 0
var lightSodaMoney = 0
var sodaMoney = 0
var doublePlusSodaMoney = 0
var berryBurstSodaMoney = 0
var godlySodaMoney = 0 #combined of the rest of the money

#Temporary way of getting true money. Will have to make a transfer system
func _process(delta):
	trueMoney = lightSodaMoney + (sodaMoney * 2) + (doublePlusSodaMoney * 3) + (berryBurstSodaMoney * 4) + (godlySodaMoney * 10)
