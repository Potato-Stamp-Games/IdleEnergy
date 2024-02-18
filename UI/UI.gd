extends CanvasLayer
class_name UI

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	%Money.text= str(FuncGlobal.round_to_dec(Global.trueMoney))
	%LightSodaLabel.text = str(FuncGlobal.round_to_dec(Global.lightSodaMoney))
	%ZapSodaLabel.text = str(FuncGlobal.round_to_dec(Global.zapSodaMoney))
	%DoublePlusSodaLabel.text = str(FuncGlobal.round_to_dec(Global.doublePlusSodaMoney))
	%BerryBurstSodaLabel.text = str(FuncGlobal.round_to_dec(Global.berryBurstSodaMoney))
	%GodlySodaLabel.text = str(FuncGlobal.round_to_dec(Global.godlySodaMoney))

func _on_shop_button_pressed():
	Global.ttlAllClicks += 1
	get_tree().change_scene_to_file("res://Scenes/shop_scene.tscn")
#Quits game
func _on_exit_button_pressed():
	Global.ttlAllClicks += 1
	get_tree().quit()
