extends TextureRect
signal FizzyLightPotionBuff
signal FizzyZapPotionBuff
signal FizzyDoublePlusPotionBuff
signal FizzyBerryBurstPotionBuff
signal FizzyGodlyPotionBuff

var cdFL = false
var cdFZ = false
var cdFDP = false
var cdFBB = false
var cdFG = false

func _can_drop_data(_at_position, _data):
	#Check if we can drop an item in this slot
	return true

func _drop_data(_at_position, data):
	#what happens when we drag and drop item here
	var item = data["origin_node_name"]
	if item == "FizzyLightPotionItem" and cdFL == false:
		Global.fizzyLightPotion -= 1
		emit_signal("FizzyLightPotionBuff")
		cdFL = true
		await get_tree().create_timer(300).timeout #wait 5 minutes
		cdFL = false
	if item == "FizzyZapPotionItem" and cdFZ == false:
		Global.fizzyZapPotion -= 1
		emit_signal("FizzyZapPotionBuff")
		cdFZ = true
		await get_tree().create_timer(300).timeout #wait 5 minutes
		cdFZ = false
	if item == "FizzyDoublePlusPotionItem" and cdFDP == false:
		Global.fizzyDoublePlusPotion -= 1
		emit_signal("FizzyDoublePlusPotionBuff")
		cdFDP = true
		await get_tree().create_timer(300).timeout #wait 5 minutes
		cdFDP = false
	if item == "FizzyBerryBurstPotionItem" and cdFBB == false:
		Global.fizzyBerryBurstPotion -= 1
		cdFBB = true
		emit_signal("FizzyBerryBurstPotionBuff")
		cdFBB = false
		await get_tree().create_timer(300).timeout #wait 5 minutes
	if item == "FizzyGodlyPotionItem" and cdFG == false:
		Global.fizzyGodlyPotion -= 1
		emit_signal("FizzyGodlyPotionBuff")
		cdFG = true
		await get_tree().create_timer(300).timeout #wait 5 minutes
		cdFG = false
