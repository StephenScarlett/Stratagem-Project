extends Control

class_name StratagemParent

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func make_children_invisible():
	var children = get_children()
	for child in children:
		if child is Control:
			child.visible = false
