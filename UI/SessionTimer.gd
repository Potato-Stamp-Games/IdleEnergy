extends Timer



func _on_timeout():
	Global.secTime += 1
	var secTime = Global.secTime
	var minTime = Global.minTime
	var hourTime = Global.hourTime
	if(secTime >= 59):
		Global.minTime += 1
		Global.secTime = -1
		
	if(minTime >= 59):
		Global.hourTime += 1
		Global.minTime = -1
	Global.sessionTime = str(hourTime) + " Hours  " + str(minTime) + " Minutes  " + str(secTime) + " Seconds"
