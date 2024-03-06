extends CanvasLayer
@onready var sfx_audio_player = $SfxAudioPlayer
const POP_BUBBLE_SOUND_EFFECT = preload("res://audio/SFX/pop.wav")
#gets item id that is pressed in the menu button and creates a callable function
func _ready():
	%CoolMenuButton.get_popup().id_pressed.connect(_on_item_pressed)
	%AchievementsPopUp.min_size = %Achievements.size

func _on_item_pressed(id: int):
	#The item name variable is set using the id to find the right item
	var item_name = %CoolMenuButton.get_popup().get_item_text(id)
	
	sfx_audio_player.stream = POP_BUBBLE_SOUND_EFFECT
	sfx_audio_player.play()

	if(item_name == "Achievements"):
		Global.ttlAllClicks += 1
		%AchievementsPopUp.show()
		print(%Achievements.size)
	if(item_name == "Your Stats"):
		Global.ttlAllClicks += 1
		%YourStatsPopUp.show()
	if(item_name == "About Us"):
		Global.ttlAllClicks += 1
		%AboutUsPopUp.show()
	if(item_name == "Settings"):
		Global.ttlAllClicks += 1
		%SettingsPopUp.show()
	if(item_name == "Exit"):
		Global.ttlAllClicks += 1
		get_tree().quit()

func _on_achievements_pop_up_close_requested():
	sfx_audio_player.stream = POP_BUBBLE_SOUND_EFFECT
	sfx_audio_player.play()
	Global.ttlAllClicks += 1
	%AchievementsPopUp.hide()
func _on_achievements_pop_up_go_back_requested():
	sfx_audio_player.stream = POP_BUBBLE_SOUND_EFFECT
	sfx_audio_player.play()
	Global.ttlAllClicks += 1
	%AchievementsPopUp.hide()

func _on_your_stats_pop_up_close_requested():
	sfx_audio_player.stream = POP_BUBBLE_SOUND_EFFECT
	sfx_audio_player.play()
	Global.ttlAllClicks += 1
	%YourStatsPopUp.hide()
func _on_your_stats_pop_up_go_back_requested():
	sfx_audio_player.stream = POP_BUBBLE_SOUND_EFFECT
	sfx_audio_player.play()
	Global.ttlAllClicks += 1
	%YourStatsPopUp.hide()

func _on_about_us_pop_up_close_requested():
	sfx_audio_player.stream = POP_BUBBLE_SOUND_EFFECT
	sfx_audio_player.play()
	Global.ttlAllClicks += 1
	%AboutUsPopUp.hide()
func _on_about_us_pop_up_go_back_requested():
	sfx_audio_player.stream = POP_BUBBLE_SOUND_EFFECT
	sfx_audio_player.play()
	Global.ttlAllClicks += 1
	%Control/AboutUsPopUp.hide()

func _on_settings_pop_up_close_requested():
	sfx_audio_player.stream = POP_BUBBLE_SOUND_EFFECT
	sfx_audio_player.play()
	Global.ttlAllClicks += 1
	%SettingsPopUp.hide()
func _on_settings_pop_up_go_back_requested():
	sfx_audio_player.stream = POP_BUBBLE_SOUND_EFFECT
	sfx_audio_player.play()
	Global.ttlAllClicks += 1
	%SettingsPopUp.hide()

func _on_cool_menu_button_pressed():
	sfx_audio_player.stream = POP_BUBBLE_SOUND_EFFECT
	sfx_audio_player.play()
