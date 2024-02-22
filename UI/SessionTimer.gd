extends Timer



func _on_timeout():
	Global.secTime += 1
	var secTime = Global.secTime
	var minTime = Global.minTime
	var hourTime = Global.hourTime
	if(secTime > 60):
		Global.minTime += 1
		Global.secTime = 0
		
	if(minTime > 60):
		Global.hourTime += 1
		Global.minTime = 0
	Global.sessionTime = str(hourTime) + " Hours  " + str(minTime) + " Minutes  " + str(secTime) + " Seconds"
