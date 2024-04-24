extends Control

class_name Stratagem

var inputarr = []
var stratagemarr = []

func _ready():
	pass

func _process(delta):
	pass

func getInputs() -> Array:
	pass

func stratagem1() -> Array:
	$PanelContainer/Panel/TextureRect.texture = $ScrollContainer/VBoxContainer/Control/MarginContainer/TextureRect.texture
	stratagemarr = ["Left","Left","Left","Left"]
	return stratagemarr

func _on_touch_screen_button_pressed():
	stratagem1()
