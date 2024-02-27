extends Control

#Change scence back to main & deletes this scene
func _on_back_button_pressed():
	Global.ttlAllClicks += 1
	Global.returnToMain2 = true

#changes backbutton sprite when mouse hovers over
func _on_back_button_mouse_entered():
	%BackButtonHoverSprite.show()
	%BackButtonSprite.hide()
func _on_back_button_mouse_exited():
	%BackButtonHoverSprite.hide()
	%BackButtonSprite.show()


func _on_potion_inv_btn_pressed():
	%PotionInventory.show()
	%DrinkRect.show()
	%PotionInvBtn.hide()
	%IngredientsInvBtn.hide()


func _on_ingredients_inv_btn_pressed():
	%IngredientInventory.show()
	%IngredientsInvBtn.hide()
	%PotionInvBtn.hide()



func _on_ingredient_inventory_visibility_changed():
	if get_node("IngredientInventory").is_visible() == false:
		%IngredientsInvBtn.show()
		%PotionInvBtn.show()


func _on_potion_inventory_visibility_changed():
	if get_node("PotionInventory").is_visible() == false:
		%PotionInvBtn.show()
		%IngredientsInvBtn.show()
		%DrinkRect.hide()


func _on_drink_fizzy_light_potion_buff():
	Global.activePotionPower += 2
	%FizzyLightBuffActive.show()
	await get_tree().create_timer(300).timeout #wait 5 minutes
	Global.activePotionPower -= 2
	%FizzyLightBuffActive.hide()
func _on_drink_fizzy_zap_potion_buff():
	Global.activePotionPower += 3
	%FizzyZapBuffActive.show()
	await get_tree().create_timer(300).timeout #wait 5 minutes
	Global.activePotionPower -= 3
	%FizzyZapBuffActive.hide()
func _on_drink_fizzy_double_plus_potion_buff():
	Global.activePotionPower += 4
	%FizzyDPBuffActive.show()
	await get_tree().create_timer(300).timeout #wait 5 minutes
	Global.activePotionPower -= 4
	%FizzyDPBuffActive.hide()
func _on_drink_rect_fizzy_berry_burst_potion_buff():
	Global.activePotionPower += 5
	%FizzyBBBuffActive.show()
	await get_tree().create_timer(300).timeout #wait 5 minutes
	Global.activePotionPower -= 5
	%FizzyBBBuffActive.hide()
func _on_drink_rect_fizzy_godly_potion_buff():
	Global.activePotionPower += 10
	%FizzyGodlyBuffActive.show()
	await get_tree().create_timer(300).timeout #wait 5 minutes
	Global.activePotionPower -= 10
	%FizzyGodlyBuffActive.hide()
