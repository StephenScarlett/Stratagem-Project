extends Node

func _ready():
	pass

func _process(delta):
	pass

func _on_button_pressed():
	print("Test Output")

func _on_right_pressed():
	pass

func _on_left_pressed():
	var stratagem = Stratagem.new() #calls
	var newarr = stratagem.inputarr + ["Left"] #trying to get inputs from stratagem
	print(newarr)

func _on_up_pressed():
	pass

func _on_down_pressed():
	pass
