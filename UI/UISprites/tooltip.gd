class_name Tooltip
extends Control

#SIGNALS

#CONSTANTS

#EXPORT VARIABLES
@export var visuals_res: PackedScene
@export var owner_path: NodePath
#PUBLIC VARIABLES

#PRIVATE VARIABLES
var _visuals: Control

#ONREADY VARIABLES
@onready var owner_node = get_node(owner_path)
#OVERRIDE FUNCTIONS
func _init() -> void:
	pass

func _ready() -> void:
	#create the visuals
	_visuals = visuals_res.instantiate()
	add_child(_visuals)
	#connect signals
	owner_node.mouse_entered().connect("_mouse_entered")
	owner_node.mouse_exited().connect("_mouse_exited")

#API Functions

#HELPER FUNCTIONS
func _mouse_entered() -> void:
	_visuals.show()

func _mouse_exited() -> void:
	_visuals.hide()
