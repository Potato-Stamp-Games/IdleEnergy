extends TextureRect

func _get_drag_data(_at_position):
	#Retrieve information about the slot we are dragging
	var nodeName = get_parent().get_parent().name
	var data  = {}
	data["origin_texture"] = texture
	data["origin_node"] = self
	data["origin_node_name"] = nodeName
	
	
	var drag_texture = TextureRect.new()
	drag_texture.expand = true
	drag_texture.texture = texture
	drag_texture.size = Vector2(100, 100)
	
	var control =  Control.new()
	control.add_child(drag_texture)
	drag_texture.position = -0.5 * drag_texture.size
	set_drag_preview(control)
	
	return data

func _can_drop_data(_at_position, _data):
	#Check if we can drop an item in this slot
	return true

func _drop_data(_at_position, _data):
	#what happens when we drag
	pass
