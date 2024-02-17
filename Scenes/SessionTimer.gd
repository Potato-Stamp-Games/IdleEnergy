extends Timer

var secTime = 0
var minTime = 0
var hourTime = 0

func _on_timeout():
	secTime += 1
	if(secTime > 60):
		minTime += 1
		secTime = 0
	if(minTime > 60):
		hourTime += 1
		minTime = 0
	Global.sessionTime = str(hourTime) + " Hours  " + str(minTime) + " Minutes  " + str(secTime) + " Seconds"
