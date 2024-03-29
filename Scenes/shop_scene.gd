extends Control
@onready var sfx_audio_player = $SfxAudioPlayer

const POP = preload("res://audio/SFX/pop.wav")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#Money & Soda Labels
	%MoneyLabel.text= FuncGlobal.add_comma_to_float(float("%.2f" %[Global.trueMoney]))
	%LightSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.lightSodaMoney]))
	%ZapSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.zapSodaMoney]))
	%DoublePlusSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.doublePlusSodaMoney]))
	%BerryBurstSodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.berryBurstSodaMoney]))
	%GodlySodaLabel.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.godlySodaMoney]))

#Change scence back to main & deletes this scene
func _on_back_button_pressed():
	Global.ttlAllClicks += 1
	sfx_audio_player.stream = POP
	sfx_audio_player.play()
	await get_tree().create_timer(0.13).timeout
	Global.returnToMain = true
	

#changes backbutton sprite when mouse hovers over
func _on_back_button_mouse_entered():
	%BackButtonHoverSprite.show()
	%BackButtonSprite.hide()
func _on_back_button_mouse_exited():
	%BackButtonHoverSprite.hide()
	%BackButtonSprite.show()
