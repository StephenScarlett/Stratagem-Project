extends Control

class_name Stratagem

var inputarr = []
@onready var leftarrow = preload("res://ArrowScenes/leftarrow.tscn")
@onready var rightarrow = preload("res://ArrowScenes/rightarrow.tscn")
@onready var uparrow = preload("res://ArrowScenes/uparrow.tscn")
@onready var downarrow = preload("res://ArrowScenes/downarrow.tscn")
var sceneArray : Array[TextureRect] = []

func _ready():
	pass

func _process(delta):
	pass

func stratagem1() -> Array:
	#var instance1 = leftarrow.instantiate()
	#$"../Panel/HBoxContainer".add_child(instance1)
	#var instance2 = rightarrow.instantiate()
	#$"../Panel/HBoxContainer".add_child(instance2)
	#var instance3 = downarrow.instantiate()
	#$"../Panel/HBoxContainer".add_child(instance3)
	#var instance4 = uparrow.instantiate()
	#$"../Panel/HBoxContainer".add_child(instance4)
	sceneArray.append(preload("res://ArrowScenes/leftarrow.tscn").instantiate())
	sceneArray.append(preload("res://ArrowScenes/rightarrow.tscn").instantiate())
	sceneArray.append(preload("res://ArrowScenes/uparrow.tscn").instantiate())
	sceneArray.append(preload("res://ArrowScenes/downarrow.tscn").instantiate())
	for i in sceneArray.size():
		var instance = sceneArray[i]
		$"../Panel/HBoxContainer".add_child(instance)
	$"../SelectedStratagemPanel/REINFORCE".visible = true
	return sceneArray

func _on_button_pressed():
	var arrayObject = ButtonMap.new()
	arrayObject.inputArray.clear()
	stratagem1()
	
