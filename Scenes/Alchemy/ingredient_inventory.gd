extends Control

#Duplicates inv template for every item
var template_inv_slot = preload("res://Scenes/Alchemy/inventory_slot.tscn")
var compareArray


#Ingredients variables
var a = Global.basePotion
var b = Global.caffinePowder
var c = Global.chargedCaffinePowder
var d = Global.doubleChargedCaffinePowder
var e = Global.explosivelyChargedCaffinePowder
var f = Global.godlyChargedCaffinePowder
var g = Global.lightSodaExtract
var h = Global.zapSodaExtract
var i = Global.doublePlusSodaExtract
var j = Global.berryBurstSodaExtract
var k = Global.godlySodaExtract

func _process(_delta):
	a = Global.basePotion
	b = Global.caffinePowder
	c = Global.chargedCaffinePowder
	d = Global.doubleChargedCaffinePowder
	e = Global.explosivelyChargedCaffinePowder
	f = Global.godlyChargedCaffinePowder
	g = Global.lightSodaExtract
	h = Global.zapSodaExtract
	i = Global.doublePlusSodaExtract
	j = Global.berryBurstSodaExtract
	var counter = 0
	var ingredientArray = [a, b, c, d, e, f, g, h, i, j, k]#All ingredients
	#If ingredient variables change
	if compareArray != ingredientArray:
		for ingredient in ingredientArray:
			counter += 1
			var inv_slot_new = template_inv_slot.instantiate()
			#Checks through every ingredient - not very ideal
			match counter:
				1:#Base Soda
					var inInventory = false
					for child in %InvIngGridContainer.get_children():
						if child.name == "BaseSodaItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvIngGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/BaseSoda.png")
						inv_slot_new.name = "BaseSodaItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvIngGridContainer.add_child(inv_slot_new, true)
						inInventory = true
						
				2:#Caffine Powder
					var inInventory = false
					for child in %InvIngGridContainer.get_children():
						if child.name == "CaffinePowderItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvIngGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/CaffinePowder.png")
						inv_slot_new.name = "CaffinePowderItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvIngGridContainer.add_child(inv_slot_new, true)
						inInventory = true
					
					
				3:#Charged Caffine Powder
					var inInventory = false
					for child in %InvIngGridContainer.get_children():
						if child.name == "ChargedCaffinePowderItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvIngGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/ChargedCaffinePowder.png")
						inv_slot_new.name = "ChargedCaffinePowderItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvIngGridContainer.add_child(inv_slot_new, true)
						inInventory = true
					
				4:#Double Charged Caffine Powder
					var inInventory = false
					for child in %InvIngGridContainer.get_children():
						if child.name == "DoubleChargedCaffinePowderItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvIngGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/DoubleChargedCaffinePowder.png")
						inv_slot_new.name = "DoubleChargedCaffinePowderItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvIngGridContainer.add_child(inv_slot_new, true)
						inInventory = true
				
				5:#Explosively Charged Caffine Powder
					var inInventory = false
					for child in %InvIngGridContainer.get_children():
						if child.name == "ExplosivelyChargedCaffinePowderItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvIngGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/ExplosivelyChargedCaffinePowder.png")
						inv_slot_new.name = "ExplosivelyChargedCaffinePowderItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvIngGridContainer.add_child(inv_slot_new, true)
						inInventory = true
						
						
				6:#Godly Charged Caffine Powder
					var inInventory = false
					for child in %InvIngGridContainer.get_children():
						if child.name == "GodlyChargedCaffinePowderItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvIngGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/GodlyChargedCaffinePowder.png")
						inv_slot_new.name = "GodlyChargedCaffinePowderItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvIngGridContainer.add_child(inv_slot_new, true)
						inInventory = true
						
				7:#Light Soda Extract
					var inInventory = false
					for child in %InvIngGridContainer.get_children():
						if child.name == "LightSodaExtractItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvIngGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/LightSodaExtract.png")
						inv_slot_new.name = "LightSodaExtractItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvIngGridContainer.add_child(inv_slot_new, true)
						inInventory = true
						
				8:#Zap Soda Extract
					var inInventory = false
					for child in %InvIngGridContainer.get_children():
						if child.name == "ZapSodaExtractItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvIngGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/ZapSodaExtract.png")
						inv_slot_new.name = "ZapSodaExtractItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvIngGridContainer.add_child(inv_slot_new, true)
						inInventory = true
						
				9:#Double Plus Soda Extract
					var inInventory = false
					for child in %InvIngGridContainer.get_children():
						if child.name == "DoublePlusSodaExtractItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvIngGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/DoublePlusSodaExtract.png")
						inv_slot_new.name = "DoublePlusSodaExtractItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvIngGridContainer.add_child(inv_slot_new, true)
						inInventory = true
						
				10:#Berry Burst Soda Extract
					var inInventory = false
					for child in %InvIngGridContainer.get_children():
						if child.name == "BerryBurstSodaExtractItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvIngGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/BerryBurstSodaExtract.png")
						inv_slot_new.name = "BerryBurstSodaExtractItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvIngGridContainer.add_child(inv_slot_new, true)
						inInventory = true
						
				11:#Godly Soda Extract
					var inInventory = false
					for child in %InvIngGridContainer.get_children():
						if child.name == "GodlySodaExtractItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvIngGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/GoldySodaExtract.png")
						inv_slot_new.name = "GodlySodaExtractItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvIngGridContainer.add_child(inv_slot_new, true)
						inInventory = true
						
	compareArray = ingredientArray


func _on_exit_ing_inventory_btn_pressed():
	self.hide()
