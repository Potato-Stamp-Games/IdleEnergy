extends ScrollContainer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	%LPowLbl.text = str(Global.lightSodaClickPower )
	%ZPowLbl.text = str(Global.zapSodaClickPower)
	%DPPowLbl.text = str(Global.doublePlusSodaClickPower)
	%BBPowLbl.text = str(Global.berryBurstSodaClickPower)
	
	%LAutoLbl.text = str(Global.lightSodaAutoClick)+ "x"
	%ZAutoLbl.text = str(Global.zapSodaAutoClick)+ "x"
	%DPAutoLbl.text = str(Global.doublePlusSodaAutoClick)+ "x"
	%BBAutoLbl.text = str(Global.berryBurstSodaAutoClick)+ "x"
	
	%GFortuneLbl.text = str(Global.godlyFavor * 10)
	%NewAgeLbl.text = str(Global.newAge)
	%QuantumSodaLbl.text = str(Global.quantumSoda)
	%MagicSodaLbl.text = str(Global.magicSoda)
	
	%TimeBottleLbl.text = str(Global.timeInSoda)
	%AlchemyLbl.text = str(Global.sodaAlchemy)
	%UnificationLbl.text = str(Global.sodaUnity)
	%ETimeLbl.text = str(Global.essenseTime)
	
	%FizzyLPotLbl.text  = str(Global.ttlFizzyLightPotion)
	%FizzyZPotLbl.text  = str(Global.ttlFizzyZapPotion)
	%FizzyDPPotLbl.text  = str(Global.ttlFizzyDoublePlusPotion)
	%FizzyBBPotLbl.text  = str(Global.ttlFizzyBerryBurstPotion)
	%FizzyGPotLbl.text  = str(Global.ttlFizzyGodlyPotion)
	
	%CPowderLbl.text  = str(Global.ttlCaffinePowder)
	%CCPowderLbl.text  = str(Global.ttlChargedCaffinePowder)
	%DCPowderLbl.text  = str(Global.ttlDoubleChargedCaffinePowder)
	%ECPowderLbl.text  = str(Global.ttlExplosivelyChargedCaffinePowder)
	%GCPowderLbl.text  = str(Global.ttlGodlyChargedCaffinePowder)
	
	%LExtractLbl.text  = str(Global.ttlLightSodaExtract)
	%ZExtractLbl.text  = str(Global.ttlZapSodaExtract)
	%DBExtractLbl.text  = str(Global.ttlDoublePlusSodaExtract)
	%BBExtractLbl.text  = str(Global.ttlBerryBurstSodaExtract)
	%GExtractLbl.text  = str(Global.ttlGodlySodaExtract)
	
	%BasePotionLbl.text  = str(Global.ttlBasePotion)
	%CraftAmountLbl.text  = str(Global.ttlCrafted)
