extends Control

class_name Stratagem

var inputarr = []
var stratagemarr = []

func _ready():
	pass

func _process(delta):
	pass

func stratagem1():
	$"../SelectedStratagemPanel/REINFORCE".visible = true

func _on_button_pressed():
	var arrayObject = ButtonMap.new()
	arrayObject.inputArray.clear()
	stratagem1()
	
