extends CanvasLayer

#Calls function when stats window appears and disapears
func _process(_delta):
	%TotalLSodaLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlLightSodaMoney]))
	%TotalZSodaLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlZapSodaMoney]))
	%TotalDPSodaLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlDoublePlusSodaMoney]))
	%TotalBBSodaLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlBerryBurstSodaMoney]))
	%TotalGSodaLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlGodlySodaMoney]))
	%TotalClicksLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlAllClicks]))
	%TotalMoneyLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlTrueMoney]))
	%SessionTimeLbl.text = Global.sessionTime
	%TotalSessionTimeLbl.text = str(0)
