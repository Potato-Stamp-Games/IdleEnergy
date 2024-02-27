#global
extends Node

#Return to main screen when in shop
var returnToMain = false
var returnToMain2 = false

#Session Timer Variables
var secTime = 0
var minTime = 0
var hourTime = 0

# Money Variables
var trueMoney = 0999999999999
var lightSodaMoney = 0999999999999
var zapSodaMoney = 0999999999999
var doublePlusSodaMoney = 0999999999999
var berryBurstSodaMoney = 0999999999999
var godlySodaMoney = 09999999999999 #combined of the rest of the money

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

#Tier 2 shop items
var godlyFavor = 0
var newAge = 0
var quantumSoda = 0
var magicSoda = 0
var timeInSoda = 0
var sodaAlchemy = 0
var sodaUnity = 0
var essenseTime = 0

#Alchemy Variables
#Items - Base
var basePotion = 12
#Items - Dusts
var caffinePowder = 3
var chargedCaffinePowder = 0
var doubleChargedCaffinePowder = 0
var explosivelyChargedCaffinePowder = 0
var godlyChargedCaffinePowder = 0

#Items - Extracts
var lightSodaExtract = 3
var zapSodaExtract = 0
var doublePlusSodaExtract = 0
var berryBurstSodaExtract = 0
var godlySodaExtract = 0

#Items - Potions
var fizzyLightPotion = 5
var fizzyZapPotion = 5
var fizzyDoublePlusPotion = 5
var fizzyBerryBurstPotion = 5
var fizzyGodlyPotion = 5
#Active
var activePotionPower = 1

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
