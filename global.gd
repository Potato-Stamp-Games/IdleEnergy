#global
extends Node
#Save data
var save_path = "user://idle.save"
#Return to main screen when in shop
var returnToMain = false
var returnToMain2 = false

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
var lightSodaClickPower = 0
var zapSodaClickPower = 0
var doublePlusSodaClickPower = 0
var berryBurstSodaClickPower = 0
var godlySodaClickPower = 0

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
var basePotion = 0
#Items - Dusts
var caffinePowder = 0
var chargedCaffinePowder = 0
var doubleChargedCaffinePowder = 0
var explosivelyChargedCaffinePowder = 0
var godlyChargedCaffinePowder = 0

#Items - Extracts
var lightSodaExtract = 0
var zapSodaExtract = 0
var doublePlusSodaExtract = 0
var berryBurstSodaExtract = 0
var godlySodaExtract = 0

#Items - Potions
var fizzyLightPotion = 0
var fizzyZapPotion = 0
var fizzyDoublePlusPotion = 0
var fizzyBerryBurstPotion = 0
var fizzyGodlyPotion = 0
#Active
var activePotionPower = 0

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
var ttlSecTime = 0
var ttlMinTime = 0
var ttlHourTime = 0

#Items- Crafted
var ttlCrafted = 0
#Items - Base
var ttlBasePotion = 0
#Items - Dusts
var ttlCaffinePowder = 0
var ttlChargedCaffinePowder = 0
var ttlDoubleChargedCaffinePowder = 0
var ttlExplosivelyChargedCaffinePowder = 0
var ttlGodlyChargedCaffinePowder = 0

#Items - Extracts
var ttlLightSodaExtract = 0
var ttlZapSodaExtract = 0
var ttlDoublePlusSodaExtract = 0
var ttlBerryBurstSodaExtract = 0
var ttlGodlySodaExtract = 0

#Items - Potions
var ttlFizzyLightPotion = 0
var ttlFizzyZapPotion = 0
var ttlFizzyDoublePlusPotion = 0
var ttlFizzyBerryBurstPotion = 0
var ttlFizzyGodlyPotion = 0

#Achievements
var baseClickPower = 1
var ttlUpgradesBought = 0
var baseMoneyPower = 1
var amClicker = false
var semiClicker = false
var proClicker = false
var godlyClicker = false
var shopU1 = false
var shopU2 = false
var shopU3 = false
var shopU4 = false
var shopU5 = false
var letItRain = false
var rainStart = false

#Weather
#Rain
var lsRain = false
var zsRain = false
var dpRain = false
var bbRain = false
#Rainbow
var rainbowStart = false
#Shooting Stars
var shootingStarsStart = false
