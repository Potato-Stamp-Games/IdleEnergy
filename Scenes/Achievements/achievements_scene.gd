extends ScrollContainer

func process_achievements(aIcon, aName: String, aDescription: String, aReward: Label):
		OverLay.icon = aIcon.texture
		OverLay.achievementName = aName
		OverLay.description = aDescription
		OverLay.reward = aReward.text
		OverLay.showAchievement = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#Amateur Clicker
	if(Global.ttlAllClicks >= 3000 and %AmClickerDone.is_visible() == false):
		%AmClickerDone.show()
		%AmClickerReward.text = "REWARD: +1 Base Soda Click Power (Before Upgrades/Potions)"
		process_achievements(%AmClickerIcon, "AMATEUR CLICKER", "Click 3,000 times", %AmClickerReward)
		Global.baseClickPower += 1
#Semi-pro Clicker
	if(Global.ttlAllClicks >= 25000 and %SemiClickerDone.is_visible() == false):
		%SemiProClickerDone.show()
		%SemiProClickerReward.text = "REWARD: +1 Base Soda Click Power (Before Upgrades/Potions)"
		process_achievements(%SemiClickerIcon, "SEMI-PRO CLICKER", "Click 25,000 times", %SemiClickerReward)
		Global.baseClickPower += 1
#Pro Clicker
	if(Global.ttlAllClicks >= 250000 and %ProClickerDone.is_visible() == false):
		%ProClickerDone.show()
		%ProClickerReward.text = "REWARD: +2 Base Soda Click Power (Before Upgrades/Potions)"
		process_achievements(%ProClickerIcon, "PRO CLICKER", "Click 250,000 times", %ProClickerReward)
		Global.baseClickPower += 2
#Godly Clicker
	if(Global.ttlAllClicks >= 1000000 and %GodlyClickerDone.is_visible() == false):
		%GodlyClickerDone.show()
		%GodlyClickerReward.text = "REWARD: +10 Base Soda Click Power (Before Upgrades/Potions)"
		process_achievements(%GodlyClickerIcon, "GODLY CLICKER", "Click 1,000,000 times", %GodlyClickerReward)
		Global.baseClickPower += 10
#Shop U1
	if(Global.ttlUpgradesBought >= 20 and %ShopU1Done.is_visible() == false):
		%ShopU1Done.show()
		%ShopU1Reward.text = "REWARD: +1 Base Money (Before Upgrades/Potions)"
		process_achievements(%ShopU1Icon, "SODA UPGRADER I", "Buy 20 upgrades",%ShopU1Reward)
		Global.baseMoneyPower += 1
#Shop U2
	if(Global.ttlUpgradesBought >= 40 and %ShopU2Done.is_visible() == false):
		%ShopU2Done.show()
		%ShopU2Reward.text = "REWARD: +1 Base Money (Before Upgrades/Potions)"
		process_achievements(%ShopU2Icon, "SODA UPGRADER II", "Buy 40 upgrades",%ShopU2Reward)
		Global.baseMoneyPower += 1
#Shop U3
	if(Global.ttlUpgradesBought >= 80 and %ShopU3Done.is_visible() == false):
		%ShopU3Done.show()
		%ShopU3Reward.text = "REWARD: +1 Base Money (Before Upgrades/Potions)"
		process_achievements(%ShopU3Icon, "SODA UPGRADER III", "Buy 80 upgrades",%ShopU3Reward)
		Global.baseMoneyPower += 1
#Shop U4
	if(Global.ttlUpgradesBought >= 160 and %ShopU4Done.is_visible() == false):
		%ShopU4Done.show()
		%ShopU4Reward.text = "REWARD: +2 Base Money (Before Upgrades/Potions)"
		process_achievements(%ShopU4Icon, "SODA UPGRADER IIII", "Buy 160 upgrades",%ShopU4Reward)
		Global.baseMoneyPower += 2
#Shop U5
	if(Global.ttlUpgradesBought >= 320 and %ShopU5Done.is_visible() == false):
		%ShopU5Done.show()
		%ShopU5Reward.text = "REWARD: +5 Base Money (Before Upgrades/Potions)"
		process_achievements(%ShopU4Icon, "SODA UPGRADER V", "Buy 320 upgrades",%ShopU4Reward)
		Global.baseMoneyPower += 5

	if(Global.ttlLightSodaMoney >= 10000 and %LetItRainDone.is_visible() == false):
		%LetItRainDone.show()
		%LetItRainReward.text = "REWARD: There is now a chance that it rains \n During rain, a random soda gains a 1.5x multiplier until rain stops"
		process_achievements(%LetItRainIcon, "LET IT RAIN SODAS", "Collect a total 10,000 Light Sodas",%LetItRainReward)
		Global.letItRain = true
