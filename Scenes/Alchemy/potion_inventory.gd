extends Control

#Duplicates inv template for every item
var template_inv_slot = preload("res://Scenes/Alchemy/inventory_slot.tscn")
var compareArray


#Ingredients variables
var a = Global.fizzyLightPotion
var b = Global.fizzyZapPotion
var c = Global.fizzyDoublePlusPotion
var d = Global.fizzyBerryBurstPotion
var e = Global.fizzyGodlyPotion


func _process(_delta):
	a = Global.fizzyLightPotion
	b = Global.fizzyZapPotion
	c = Global.fizzyDoublePlusPotion
	d = Global.fizzyBerryBurstPotion
	e = Global.fizzyGodlyPotion
	var counter = 0
	var potionArray = [a, b, c, d, e]#All ingredients
	#If ingredient variables change
	if compareArray != potionArray:
		for ingredient in potionArray:
			counter += 1
			var inv_slot_new = template_inv_slot.instantiate()
			#Checks through every ingredient - not very ideal
			match counter:
				1:#Base Soda
					var inInventory = false
					for child in %InvPotGridContainer.get_children():
						if child.name == "FizzyLightPotionItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvPotGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/FizzyLight.png")
						inv_slot_new.name = "FizzyLightPotionItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvPotGridContainer.add_child(inv_slot_new, true)
						inInventory = true
						
				2:#FizzyZapPotionItem
					var inInventory = false
					for child in %InvPotGridContainer.get_children():
						if child.name == "FizzyZapPotionItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvPotGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/FizzyZap.png")
						inv_slot_new.name = "FizzyZapPotionItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvPotGridContainer.add_child(inv_slot_new, true)
						inInventory = true
					
					
				3:#FizzyDoublePlusPotionItem
					var inInventory = false
					for child in %InvPotGridContainer.get_children():
						if child.name == "FizzyDoublePlusPotionItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvPotGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/FizzyDoublePlus.png")
						inv_slot_new.name = "FizzyDoublePlusPotionItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvPotGridContainer.add_child(inv_slot_new, true)
						inInventory = true
					
				4:#FizzyBerryBurstPotionItem
					var inInventory = false
					for child in %InvPotGridContainer.get_children():
						if child.name == "FizzyBerryBurstPotionItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvPotGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/FizzyBerryBurst.png")
						inv_slot_new.name = "FizzyBerryBurstPotionItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvPotGridContainer.add_child(inv_slot_new, true)
						inInventory = true
				
				5:#FizzyGodlyPotionItem
					var inInventory = false
					for child in %InvPotGridContainer.get_children():
						if child.name == "FizzyGodlyPotionItem":
							child.get_node("M/Icon/AmtLbl").text = str(ingredient)
							inInventory = true
							if ingredient == 0:
								%InvPotGridContainer.remove_child(child)
							break
						else:
							inInventory = false
						
					if inInventory == false && ingredient > 0:
						var icon_texture = load("res://Scenes/Alchemy/Sprites/FizzyGodly.png")
						inv_slot_new.name = "FizzyGodlyPotionItem"
						inv_slot_new.get_node("M/Icon").set_texture(icon_texture)
						inv_slot_new.get_node("M/Icon/AmtLbl").text = str(ingredient)
						%InvPotGridContainer.add_child(inv_slot_new, true)
						inInventory = true
						
						
	compareArray = potionArray


func _on_exit_pot_inventory_btn_pressed():
	self.hide()
