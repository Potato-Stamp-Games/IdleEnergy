extends CanvasLayer

#Calls function when stats window appears and disapears
func _on_your_stats_pop_up_visibility_changed():
	%TtlSodaLightLbl.text = str(Global.ttlLightSodaMoney)
	%TtlZapSodaLbl.text = str(Global.ttlZapSodaMoney)
	%TtlDoublePlusSodaLbl.text = str(Global.ttlDoublePlusSodaMoney)
	%TtlBerryBurstSodaLbl.text = str(Global.ttlBerryBurstSodaMoney)
	%TtlGodlySodaLbl.text = str(Global.ttlGodlySodaMoney)
	%TtlClicksLbl.text = str(Global.ttlAllClicks)
	%TtlMoneyLbl.text = str(Global.ttlTrueMoney)
	%ThisSessionTimeLbl.text = Global.sessionTime
	%LongestSessionLbl.text = str(0)
