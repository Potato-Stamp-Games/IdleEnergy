extends Control

func _process(_delta):
	%CaffinePowderLbl.text = str(Global.caffinePowder)
	%ChargedCaffinePowderLbl.text = str(Global.chargedCaffinePowder)
	%DoubleChargedCaffinePowderLbl.text = str(Global.doubleChargedCaffinePowder)
	%ExplosivelyChargedCaffinePowderLbl.text = str(Global.explosivelyChargedCaffinePowder)
	%GodlyChargedCaffinePowderLbl.text = str(Global.godlyChargedCaffinePowder)
	%LightSodaExtractLbl.text = str(Global.lightSodaExtract)
	%ZapSodaExtractLbl.text = str(Global.zapSodaExtract)
	%DoublePlusSodaExtractLbl.text = str(Global.doublePlusSodaExtract)
	%BerryBurstSodaExtractLbl.text = str(Global.berryBurstSodaExtract)
	%GodlySodaExtractLbl.text = str(Global.godlySodaExtract)
	

#Change scence back to main & deletes this scene
func _on_back_button_pressed():
	Global.ttlAllClicks += 1
	Global.returnToMain2 = true

#changes backbutton sprite when mouse hovers over
func _on_back_button_mouse_entered():
	%BackButtonHoverSprite.show()
	%BackButtonSprite.hide()
func _on_back_button_mouse_exited():
	%BackButtonHoverSprite.hide()
	%BackButtonSprite.show()
