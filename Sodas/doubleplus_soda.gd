extends Area2D
class_name DoublePlusSoda

var DoublePlusSodaClickedSprite
var DoublePlusSodaSprite
func _ready():
	DoublePlusSodaClickedSprite = get_node("DoublePlusSodaClickedSprite")
	DoublePlusSodaSprite = get_node("DoublePlusSodaSprite")

#When input is mouse, when mouse button left click, when pressed
func _on_input_event(_viewport, event, _shape_idx):#on_input_event calls collisionshape2d signal
	if  event is InputEventMouseButton:
		DoublePlusSodaClickedSprite.hide()
		DoublePlusSodaSprite.show()
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#Creates values based on most recent in global.gd
			var trueMoney = Global.trueMoney
			var doublePlusSodaMoney = Global.doublePlusSodaMoney
			var doublePlusSodaClickPower = Global.doublePlusSodaClickPower
			
			#Calculates the new value based on click power
			doublePlusSodaMoney += doublePlusSodaClickPower
			trueMoney = trueMoney + (doublePlusSodaClickPower * 3)
			
			#Sets the new value for each money type
			Global.doublePlusSodaMoney = doublePlusSodaMoney
			Global.trueMoney = trueMoney
			Global.ttlAllClicks += 1
			Global.ttlDoublePlusSodaMoney += doublePlusSodaClickPower
			Global.ttlTrueMoney = Global.ttlTrueMoney + (doublePlusSodaClickPower * 3)
			
			DoublePlusSodaClickedSprite.show()
			DoublePlusSodaSprite.hide()
