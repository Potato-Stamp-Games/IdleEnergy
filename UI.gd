extends CanvasLayer
class_name UI
#Variable Intialized
var money = 0



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	money = Global.berryBurstSodaMoney  #local variable money set to global variable
	get_node("%Money").text = str(money)  #Money text box set to local variable

