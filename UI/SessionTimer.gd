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
	Global.sessionTime = str(hourTime) + "h  " + str(minTime) + "m  " + str(secTime) + "s"
	
	Global.ttlSecTime += 1
	if(Global.ttlSecTime >= 59):
		Global.ttlMinTime += 1
		Global.ttlSecTime = -1
		
	if(Global.ttlMinTime >= 59):
		Global.ttlHourTime += 1
		Global.ttlMinTime = -1
	Global.ttlSessionTime = str(Global.ttlHourTime) + "h  " + str(Global.ttlMinTime) + "m  " + str(Global.ttlSecTime) + "s"
