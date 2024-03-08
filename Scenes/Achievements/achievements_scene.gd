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
	if(Global.ttlAllClicks >= 3000 and Global.amClicker == false):
		%AmClickerDone.show()
		%AmClickerReward.text = "REWARD: +1 Base Soda Click Power (Before Upgrades/Potions)"
		process_achievements(%AmClickerIcon, "AMATEUR CLICKER", "Click 3,000 times", %AmClickerReward)
		Global.baseClickPower += 1
		Global.amClicker = true
	elif Global.amClicker == true:
		%AmClickerDone.show()
		%AmClickerReward.text = "REWARD: +1 Base Soda Click Power (Before Upgrades/Potions)"
#Semi-pro Clicker
	if(Global.ttlAllClicks >= 25000 and Global.semiClicker == false):
		%SemiProClickerDone.show()
		%SemiProClickerReward.text = "REWARD: +1 Base Soda Click Power (Before Upgrades/Potions)"
		process_achievements(%SemiClickerIcon, "SEMI-PRO CLICKER", "Click 25,000 times", %SemiClickerReward)
		Global.baseClickPower += 1
		Global.semiClicker = true
	elif Global.semiClicker == true:
		%SemiProClickerDone.show()
		%SemiProClickerReward.text = "REWARD: +1 Base Soda Click Power (Before Upgrades/Potions)"
#Pro Clicker
	if(Global.ttlAllClicks >= 250000 and Global.proClicker == false):
		%ProClickerDone.show()
		%ProClickerReward.text = "REWARD: +2 Base Soda Click Power (Before Upgrades/Potions)"
		process_achievements(%ProClickerIcon, "PRO CLICKER", "Click 250,000 times", %ProClickerReward)
		Global.baseClickPower += 2
		Global.proClicker = true
	elif Global.proClicker == true:
		%ProClickerDone.show()
		%ProClickerReward.text = "REWARD: +2 Base Soda Click Power (Before Upgrades/Potions)"
#Godly Clicker
	if(Global.ttlAllClicks >= 1000000 and Global.godlyClicker == false):
		%GodlyClickerDone.show()
		%GodlyClickerReward.text = "REWARD: +10 Base Soda Click Power (Before Upgrades/Potions)"
		process_achievements(%GodlyClickerIcon, "GODLY CLICKER", "Click 1,000,000 times", %GodlyClickerReward)
		Global.baseClickPower += 10
		Global.godlyClicker = true
	elif Global.godlyClicker == true:
		%GodlyClickerDone.show()
		%GodlyClickerReward.text = "REWARD: +10 Base Soda Click Power (Before Upgrades/Potions)"
#Shop U1
	if(Global.ttlUpgradesBought >= 20 and Global.shopU1 == false):
		%ShopU1Done.show()
		%ShopU1Reward.text = "REWARD: +1 Base Money (Before Upgrades/Potions)"
		process_achievements(%ShopU1Icon, "SODA UPGRADER I", "Buy 20 upgrades",%ShopU1Reward)
		Global.baseMoneyPower += 1
		Global.shopU1 = true
	elif Global.shopU1 == true:
		%ShopU1Done.show()
		%ShopU1Reward.text = "REWARD: +1 Base Money (Before Upgrades/Potions)"
#Shop U2
	if(Global.ttlUpgradesBought >= 40 and Global.shopU2 == false):
		%ShopU2Done.show()
		%ShopU2Reward.text = "REWARD: +1 Base Money (Before Upgrades/Potions)"
		process_achievements(%ShopU2Icon, "SODA UPGRADER II", "Buy 40 upgrades",%ShopU2Reward)
		Global.baseMoneyPower += 1
		Global.shopU2 = true
	elif Global.shopU2 == true:
		%ShopU2Done.show()
		%ShopU2Reward.text = "REWARD: +1 Base Money (Before Upgrades/Potions)"
#Shop U3
	if(Global.ttlUpgradesBought >= 80 and Global.shopU3 == false):
		%ShopU3Done.show()
		%ShopU3Reward.text = "REWARD: +1 Base Money (Before Upgrades/Potions)"
		process_achievements(%ShopU3Icon, "SODA UPGRADER III", "Buy 80 upgrades",%ShopU3Reward)
		Global.baseMoneyPower += 1
		Global.shopU3 = true
	elif Global.shopU3 == true:
		%ShopU3Done.show()
		%ShopU3Reward.text = "REWARD: +1 Base Money (Before Upgrades/Potions)"
		
#Shop U4
	if(Global.ttlUpgradesBought >= 160 and Global.shopU4 == false):
		%ShopU4Done.show()
		%ShopU4Reward.text = "REWARD: +2 Base Money (Before Upgrades/Potions)"
		process_achievements(%ShopU4Icon, "SODA UPGRADER IIII", "Buy 160 upgrades",%ShopU4Reward)
		Global.baseMoneyPower += 2
		Global.shopU5 = true
	elif Global.shopU5 == true:
		%ShopU4Done.show()
		%ShopU4Reward.text = "REWARD: +2 Base Money (Before Upgrades/Potions)"
#Shop U5
	if(Global.ttlUpgradesBought >= 320 and Global.shopU5 == false):
		%ShopU5Done.show()
		%ShopU5Reward.text = "REWARD: +5 Base Money (Before Upgrades/Potions)"
		process_achievements(%ShopU5Icon, "SODA UPGRADER V", "Buy 320 upgrades",%ShopU5Reward)
		Global.baseMoneyPower += 5
		Global.shopU5 = true
	elif Global.shopU5 == true:
		%ShopU5Done.show()
		%ShopU5Reward.text = "REWARD: +5 Base Money (Before Upgrades/Potions)"

	if(Global.ttlLightSodaMoney >= 10000 and Global.LetItRain == false):
		%LetItRainDone.show()
		%LetItRainReward.text = "REWARD: There is now a chance that it rains \n During rain, a random soda gains a 4x multiplier until rain stops"
		process_achievements(%LetItRainIcon, "LET IT RAIN SODAS", "Collect a total 10,000 Light Sodas",%LetItRainReward)
		Global.letItRain = true
	elif Global.letItRain == true:
		%LetItRainDone.show()
		%LetItRainReward.text = "REWARD: There is now a chance that it rains \n During rain, a random soda gains a 4x multiplier until rain stops"
