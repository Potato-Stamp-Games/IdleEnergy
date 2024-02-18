extends Node
class_name FuncGlobal
#Global functions

static func round_to_dec(num):
	return round(num * pow(10.0, 2)) / pow(10.0, 2)
