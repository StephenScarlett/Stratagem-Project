extends Control

class_name Stratagem

var inputarr = []
@onready var leftarrow = preload("res://ArrowScenes/leftarrow.tscn")
@onready var rightarrow = preload("res://ArrowScenes/rightarrow.tscn")
@onready var uparrow = preload("res://ArrowScenes/uparrow.tscn")
@onready var downarrow = preload("res://ArrowScenes/downarrow.tscn")
var stratagemOne = [leftarrow, leftarrow, leftarrow, rightarrow]

func _ready():
	pass

func _process(delta):
	pass

func stratagem1():
	var instance1 = leftarrow.instantiate()
	$"../Panel/HBoxContainer".add_child(instance1)
	var instance2 = leftarrow.instantiate()
	$"../Panel/HBoxContainer".add_child(instance2)
	var instance3 = leftarrow.instantiate()
	$"../Panel/HBoxContainer".add_child(instance3)
	var instance4 = rightarrow.instantiate()
	$"../Panel/HBoxContainer".add_child(instance4)
	$"../SelectedStratagemPanel/REINFORCE".visible = true

func _on_button_pressed():
	var arrayObject = ButtonMap.new()
	arrayObject.inputArray.clear()
	stratagem1()
	
