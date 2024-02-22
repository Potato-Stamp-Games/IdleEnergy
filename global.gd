#global
extends Node

#Return to main screen when in shop
var returnToMain = false

#Session Timer Variables
var secTime = 0
var minTime = 0
var hourTime = 0

# Money Variables
var trueMoney = 0
var lightSodaMoney = 0
var zapSodaMoney = 0
var doublePlusSodaMoney = 0
var berryBurstSodaMoney = 0
var godlySodaMoney = 0 #combined of the rest of the money

#Click Power Variables
var lightSodaClickPower = 1
var zapSodaClickPower = 1
var doublePlusSodaClickPower = 1
var berryBurstSodaClickPower = 1
var godlySodaClickPower = 1

#Auto Click Power Variables Multiplier
var lightSodaAutoClick = 1.0
var zapSodaAutoClick = 1.0
var doublePlusSodaAutoClick = 1.0
var berryBurstSodaAutoClick = 1.0

#Auto Click started variable
var lightSodaAuto = false
var zapSodaAuto = false
var doublePlusSodaAuto = false
var berryBurstSodaAuto = false

#Values for stats
var ttlTrueMoney = 0
var ttlLightSodaMoney = 0
var ttlZapSodaMoney = 0
var ttlDoublePlusSodaMoney = 0
var ttlBerryBurstSodaMoney = 0
var ttlGodlySodaMoney = 0
var ttlAllClicks = 0
var prestiegeCounter = 0
var sessionTime = ""
var ttlSessionTime = ""

#Tier 2 shop items
var godlyFavor = 0
var newAge = 0
