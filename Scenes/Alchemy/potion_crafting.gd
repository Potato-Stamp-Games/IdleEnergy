extends ScrollContainer
var fizzyLStart = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if fizzyLStart == true:
		%FizzyLightPotion_PB.value = %FizzyLTimer.wait_time - (%FizzyLTimer.time_left)

func _on_fizzy_light_potion_btn_pressed():
	if Global.caffinePowder >= 1 and Global.basePotion >= 1 and fizzyLStart == false:
		fizzyLStart = true
		%FizzyLTimer.start()
		%FizzyLightPotion_PB.max_value = %FizzyLTimer.wait_time
		Global.caffinePowder -= 1
		Global.basePotion -=  1

func _on_fizzy_l_timer_timeout():
	Global.fizzyLightPotion += 1
	fizzyLStart = false
	%FizzyLTimer.stop()
	%FizzyLightPotion_PB.value = 0
