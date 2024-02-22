extends CanvasLayer

@onready var SFX_BUS_ID = AudioServer.get_bus_index("Sfx")
@onready var MUSIC_BUS_ID = AudioServer.get_bus_index("Music")

#gets item id that is pressed in the menu button and creates a callable function
func _ready():
	%CoolMenuButton.get_popup().id_pressed.connect(_on_item_pressed)

func _on_item_pressed(id: int):
	#The item name variable is set using the id to find the right item
	var item_name = %CoolMenuButton.get_popup().get_item_text(id)
	if(item_name == "Achievements"):
		Global.ttlAllClicks += 1
		%AchievementsPopUp.show()
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
	Global.ttlAllClicks += 1
	%AchievementsPopUp.hide()
func _on_achievements_pop_up_go_back_requested():
	Global.ttlAllClicks += 1
	%AchievementsPopUp.hide()

func _on_your_stats_pop_up_close_requested():
	Global.ttlAllClicks += 1
	%YourStatsPopUp.hide()
func _on_your_stats_pop_up_go_back_requested():
	Global.ttlAllClicks += 1
	%YourStatsPopUp.hide()

func _on_about_us_pop_up_close_requested():
	Global.ttlAllClicks += 1
	%AboutUsPopUp.hide()
func _on_about_us_pop_up_go_back_requested():
	Global.ttlAllClicks += 1
	%Control/AboutUsPopUp.hide()

func _on_settings_pop_up_close_requested():
	Global.ttlAllClicks += 1
	%SettingsPopUp.hide()
func _on_settings_pop_up_go_back_requested():
	Global.ttlAllClicks += 1
	%SettingsPopUp.hide()

func _on_music_slider_value_changed(value):
	AudioServer.set_bus_volume_db(MUSIC_BUS_ID, linear_to_db(value))
	AudioServer.set_bus_mute(MUSIC_BUS_ID, value < .05)

func _on_sfx_slider_value_changed(value):
	AudioServer.set_bus_volume_db(SFX_BUS_ID, linear_to_db(value))
	AudioServer.set_bus_mute(SFX_BUS_ID, value < .05)
	
