extends CanvasLayer
class_name UI




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	%Money.text= str(Global.trueMoney)
	%LightSodaLabel.text = str(Global.lightSodaMoney)
	%SodaLabel.text = str(Global.sodaMoney)
	%DoublePlusSodaLabel.text = str(Global.doublePlusSodaMoney)
	%BerryBurstSodaLabel.text = str(Global.berryBurstSodaMoney)
	%GodlySodaLabel.text = str(Global.godlySodaMoney)

