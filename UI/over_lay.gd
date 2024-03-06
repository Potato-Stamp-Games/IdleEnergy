extends CanvasLayer
@export var eventName: String = "ACHIEVEMENT COMPLETED!"
@export var showAchievement: bool = false
@export var icon: Texture
@export var achievementName: String
@export var description: String
@export var reward: String
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if showAchievement == true:
		%EventName.text = eventName
		%Icon.texture = icon
		%AchievementName.text = achievementName
		%AchievementGet.text = description
		%AchievementReward.text = reward
		%AchievementShowTimer.start()
		self.show()
		showAchievement = false
	


func _on_achievement_show_timer_timeout():
	self.hide()
