extends CanvasLayer
class_name UI
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	%Money.text= FuncGlobal.add_comma_to_float(float("%.2f" %[Global.trueMoney]))
	%LightSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.lightSodaMoney]))
	%ZapSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.zapSodaMoney]))
	%DoublePlusSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.doublePlusSodaMoney]))
	%BerryBurstSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.berryBurstSodaMoney]))
	%GodlySodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.godlySodaMoney]))

func _on_shop_button_pressed():
	Global.ttlAllClicks += 1
	get_tree().change_scene_to_file("res://Scenes/shop_scene.tscn")
