extends Control

class_name Stratagem

var stratagem_parent = StratagemParent.new()

func _ready():
	pass

func _process(_delta):
	stratagem_parent.make_children_invisible()

func stratagem_reinforce():
	stratagem_parent.make_children_invisible()
	$"../SelectedStratagemPanel/STRATAGEMS/REINFORCE".visible = true
	
func stratagem_resupply():
	
	stratagem_parent.make_children_invisible()
	$"../SelectedStratagemPanel/STRATAGEMS/RESUPPLY".visible = true
	

func _on_button_pressed():
	var arrayObject = ButtonMap.new()
	arrayObject.inputArray.clear()
	arrayObject.resultArray = [1,1,1,2]
	stratagem_reinforce()
	
func _on_button_2_pressed():
	var arrayObject = ButtonMap.new()
	arrayObject.inputArray.clear()
	arrayObject.resultArray = [2,2,2,1]
	stratagem_resupply()
