extends Control

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Global.rainbowStart == true and %RainbowTimer.is_stopped() == true:
		%RainbowRed.emitting = true
		%RainbowOrange.emitting = true
		%RainbowYellow.emitting = true
		%RainbowGreen.emitting = true
		%RainbowBlue.emitting = true
		%RainbowPurple.emitting = true
		%MainLight.color = "ead74b70"
		%MainLight.enabled = true
		%RainbowTimer.start()


func _on_rainbow_timer_timeout():
	%RainbowRed.emitting = false
	%RainbowOrange.emitting = false
	%RainbowYellow.emitting = false
	%RainbowGreen.emitting = false
	%RainbowBlue.emitting = false
	%RainbowPurple.emitting = false
	%RainbowLight.enabled = false
	Global.rainbowStart = false
	%LSMultiplyLbl.text = ""
	%ZSMultiplyLbl.text = ""
	%DPSMultiplyLbl.text = ""
	%BBSMultiplyLbl.text = ""
	%RainbowTimer.stop()
