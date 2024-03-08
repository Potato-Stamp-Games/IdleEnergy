extends Timer
func _on_timeout():
	var file = FileAccess.open(Global.save_path, FileAccess.WRITE)

	#Session Timer Variables
	file.store_var(Global.ttlSecTime)#1
	file.store_var(Global.ttlMinTime)#2
	file.store_var(Global.ttlHourTime)#3

	# Money Variables
	file.store_var(Global.trueMoney)#4
	file.store_var(Global.lightSodaMoney)#5
	file.store_var(Global.zapSodaMoney)#6
	file.store_var(Global.doublePlusSodaMoney)#7
	file.store_var(Global.berryBurstSodaMoney)#8
	file.store_var(Global.godlySodaMoney)#9

	#Click Power Variables
	file.store_var(Global.lightSodaClickPower)#10
	file.store_var(Global.zapSodaClickPower)#11
	file.store_var(Global.doublePlusSodaClickPower)#12
	file.store_var(Global.berryBurstSodaClickPower)#13
	file.store_var(Global.godlySodaClickPower)#14

	#Auto Click Power Variables Multiplier
	file.store_var(Global.lightSodaAutoClick)#15
	file.store_var(Global.zapSodaAutoClick)#16
	file.store_var(Global.doublePlusSodaAutoClick)#17
	file.store_var(Global.berryBurstSodaAutoClick)#18

	#Auto Click started variable
	file.store_var(Global.lightSodaAuto)#19
	file.store_var(Global.zapSodaAuto)#20
	file.store_var(Global.doublePlusSodaAuto)#21
	file.store_var(Global.berryBurstSodaAuto)#22

	#Tier 2 shop items
	file.store_var(Global.godlyFavor)#23
	file.store_var(Global.newAge)#24
	file.store_var(Global.quantumSoda)#25
	file.store_var(Global.magicSoda)#26
	file.store_var(Global.timeInSoda)#27
	file.store_var(Global.sodaAlchemy)#28
	file.store_var(Global.sodaUnity)#29
	file.store_var(Global.essenseTime)#30

	#Alchemy Variables
	#Items - Base
	file.store_var(Global.basePotion)#31
	#Items - Dusts
	file.store_var(Global.caffinePowder)#32
	file.store_var(Global.chargedCaffinePowder)#33
	file.store_var(Global.doubleChargedCaffinePowder)#34
	file.store_var(Global.explosivelyChargedCaffinePowder)#35
	file.store_var(Global.godlyChargedCaffinePowder)#36

	#Items - Extracts
	file.store_var(Global.lightSodaExtract)#37
	file.store_var(Global.zapSodaExtract)#38
	file.store_var(Global.doublePlusSodaExtract)#39
	file.store_var(Global.berryBurstSodaExtract)#40
	file.store_var(Global.godlySodaExtract)#41

	#Items - Potions
	file.store_var(Global.fizzyLightPotion)#42
	file.store_var(Global.fizzyZapPotion)#43
	file.store_var(Global.fizzyDoublePlusPotion)#44
	file.store_var(Global.fizzyBerryBurstPotion)#45
	file.store_var(Global.fizzyGodlyPotion)#46
	#Active
	file.store_var(Global.activePotionPower)#47

	#Values for stats
	file.store_var(Global.ttlTrueMoney)#48
	file.store_var(Global.ttlLightSodaMoney)#49
	file.store_var(Global.ttlZapSodaMoney)#50
	file.store_var(Global.ttlDoublePlusSodaMoney)#51
	file.store_var(Global.ttlBerryBurstSodaMoney)#52
	file.store_var(Global.ttlGodlySodaMoney)#53
	file.store_var(Global.ttlAllClicks)#54
	file.store_var(Global.prestiegeCounter)#55

	#Items- Crafted
	file.store_var(Global.ttlCrafted)#56
	#Items - Base
	file.store_var(Global.ttlBasePotion)#57
	#Items - Dusts
	file.store_var(Global.ttlCaffinePowder)#58
	file.store_var(Global.ttlChargedCaffinePowder)#59
	file.store_var(Global.ttlDoubleChargedCaffinePowder)#60
	file.store_var(Global.ttlExplosivelyChargedCaffinePowder)#61
	file.store_var(Global.ttlGodlyChargedCaffinePowder)#62

	#Items - Extracts
	file.store_var(Global.ttlLightSodaExtract)#63
	file.store_var(Global.ttlZapSodaExtract)#64
	file.store_var(Global.ttlDoublePlusSodaExtract)#65
	file.store_var(Global.ttlBerryBurstSodaExtract)#66
	file.store_var(Global.ttlGodlySodaExtract)#67

	#Items - Potions
	file.store_var(Global.ttlFizzyLightPotion)#68
	file.store_var(Global.ttlFizzyZapPotion)#69
	file.store_var(Global.ttlFizzyDoublePlusPotion)#70
	file.store_var(Global.ttlFizzyBerryBurstPotion)#71
	file.store_var(Global.ttlFizzyGodlyPotion)#72

	#Achievements
	file.store_var(Global.baseClickPower)#73
	file.store_var(Global.ttlUpgradesBought)#74
	file.store_var(Global.baseMoneyPower)#75
	file.store_var(Global.amClicker)#76
	file.store_var(Global.semiClicker)#77
	file.store_var(Global.proClicker)#78
	file.store_var(Global.godlyClicker)#79
	file.store_var(Global.shopU1)#80
	file.store_var(Global.shopU2)#81
	file.store_var(Global.shopU3)#82
	file.store_var(Global.shopU4)#83
	file.store_var(Global.shopU5)#84
	file.store_var(Global.letItRain)#85

