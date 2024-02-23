extends CanvasLayer
class_name UI


@onready var shop = preload("res://Scenes/shop_scene.tscn").instantiate()
@onready var sfx_player = $"../../SFX Player"
@onready var music_player = $"../../Music Player"

#Pre Load Sound Effects
const TREASURE_CHEST_OPENING_SOUND_EFFECT = preload("res://audio/SFX/Treasure chest opening sound effect.mp3")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	%Money.text= FuncGlobal.add_comma_to_float(float("%.2f" %[Global.trueMoney]))
	%LightSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.lightSodaMoney]))
	%ZapSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.zapSodaMoney]))
	%DoublePlusSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.doublePlusSodaMoney]))
	%BerryBurstSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.berryBurstSodaMoney]))
	%GodlySodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.godlySodaMoney]))
	
	if Global.returnToMain == true:
		%MainLayer.show()
		if sfx_player.is_playing():
			Global.returnToMain = true
			return
		remove_child(shop)
		Global.returnToMain = false

func _on_shop_button_pressed():
	Global.ttlAllClicks += 1
	sfx_player.stream = TREASURE_CHEST_OPENING_SOUND_EFFECT
	sfx_player.play()
	add_child(shop)
	%MainLayer.hide()
