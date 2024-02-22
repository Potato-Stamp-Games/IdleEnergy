extends Control


@export var header: String
@export var body1: String
@export var body2: String
@export var body3: String

func set_text(h: String, b1: String, b2: String, b3: String) -> void:
	%HeaderTextLbl.text = h
	%BodyText1Lbl.text = b1
	%BodyText2Lbl.text = b2
	%BodyText3Lbl.text = b3
