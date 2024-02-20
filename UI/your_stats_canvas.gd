extends CanvasLayer

#Calls function when stats window appears and disapears
func _on_your_stats_pop_up_visibility_changed():
	%TtlSodaLightLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlLightSodaMoney]))
	%TtlZapSodaLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlZapSodaMoney]))
	%TtlDoublePlusSodaLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlDoublePlusSodaMoney]))
	%TtlBerryBurstSodaLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlBerryBurstSodaMoney]))
	%TtlGodlySodaLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlGodlySodaMoney]))
	%TtlClicksLbl.text = str(Global.ttlAllClicks)
	%TtlMoneyLbl.text = FuncGlobal.add_comma_to_float(float("%.2f" %[Global.ttlTrueMoney]))
	%ThisSessionTimeLbl.text = Global.sessionTime
	%LongestSessionLbl.text = str(0)
	%LClickPowLbl.text = str(Global.lightSodaClickPower)
	%ZClickPowLbl.text = str(Global.zapSodaClickPower)
	%DBClickPowLbl.text = str(Global.doublePlusSodaClickPower)
	%BBClickPowLbl.text = str(Global.berryBurstSodaClickPower)
	%LClickAutoLbl.text = "%.f%%" %[Global.lightSodaAutoClick * 100]
	%ZClickAutoLbl.text = "%.f%%" %[Global.zapSodaAutoClick * 100]
	%DBClickAutoLbl.text = "%.f%%" %[Global.doublePlusSodaAutoClick * 100]
	%BBClickAutoLbl.text = "%.f%%" %[Global.berryBurstSodaAutoClick * 100]
