extends CanvasLayer
class_name UI

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	%Money.text= str(Global.trueMoney)
	%LightSodaLabel.text = str(Global.lightSodaMoney)
	%ZapSodaLabel.text = str(Global.zapSodaMoney)
	%DoublePlusSodaLabel.text = str(Global.doublePlusSodaMoney)
	%BerryBurstSodaLabel.text = str(Global.berryBurstSodaMoney)
	%GodlySodaLabel.text = str(Global.godlySodaMoney)

func _on_shop_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/shop_scene.tscn")
#Quits game
func _on_exit_button_pressed():
	get_tree().quit()
