

extends Node


#####################################
# SIGNALS
#####################################

#####################################
# CONSTANTS
#####################################

#####################################
# EXPORT VARIABLES 
#####################################
@export var owner_path: NodePath
@export var visuals_res: PackedScene
@export var delay: float = 2.0
@export var follow_mouse: bool = true
@export var offset_x: float
@export var offset_y: float
@export var padding_x: float
@export var padding_y: float
@export var header: String
@export var body1: String
@export var body2: String
@export var body3: String

#####################################
# PUBLIC VARIABLES 
#####################################

#####################################
# PRIVATE VARIABLES
#####################################
var _visuals: Control
var _timer: Timer
#####################################
# ONREADY VARIABLES
#####################################
@onready var owner_node = get_node(owner_path)
@onready var offset: Vector2 = Vector2(offset_x, offset_y)
@onready var padding: Vector2 = Vector2(padding_x, padding_y)
@onready var extents: Vector2

#####################################
# OVERRIDE FUNCTIONS
#####################################
func _init() -> void:
	pass

func _ready() -> void:
	# create the visuals
	_visuals = visuals_res.instantiate()
	add_child(_visuals)
	# default to hide
	_visuals.hide()
	# Sets visual text
	_visuals.set_text(header, body1, body2, body3)
	#calculate the extents
	extents = _visuals.size
	# connect signals
	owner_node.mouse_entered.connect(_mouse_entered)
	owner_node.mouse_exited.connect(_mouse_exited)
	# initialize the timer
	_timer = Timer.new()
	add_child(_timer)
	_timer.wait_time = delay
	_timer.timeout.connect(_custom_show)

#Sets the visual to top-right corner of mouse cursor
func _process(_delta: float) -> void:
	if _visuals.visible:
		var border = get_viewport().size
		border.x = border.x - padding.x
		border.y = border.y - padding.y
		
		var base_pos = _get_screen_pos()
		#test if need to display to left
		var final_x = float(base_pos.x) + offset.x
		if final_x + extents.x > border.x:
			final_x = base_pos.x - offset.x - extents.x
		#test if need to display below
		var final_y = base_pos.y - extents.y - offset.y
		if final_y < padding_y:
			final_y = float(base_pos.y) + offset.y
		_visuals.position = Vector2(final_x , final_y )

#####################################
# API FUNCTIONS
#####################################

#####################################
# HELPER FUNCTIONS
#####################################

#Buddy has entered your channel
func _mouse_entered() -> void:
	_timer.start()

#Buddy has left your channel
func _mouse_exited() -> void:
	_timer.stop()
	_visuals.hide()

func _custom_show() -> void:
	_timer.stop()
	_visuals.show()

func _get_screen_pos() -> Vector2:
	if follow_mouse:
		return get_viewport().get_mouse_position()
	
	
	var position = Vector2()
	
	if owner_node is Node2D:
		position = owner_node.get_global_transform_with_canvas().origin
	elif owner_node is Control:
		position = owner_node.position
	elif owner_node is BoxContainer:
		position = owner_node.get_global_transform_with_canvas().origin
	
	return position
