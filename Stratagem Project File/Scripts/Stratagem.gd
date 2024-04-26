extends Control

class_name Stratagem

var inputArray = []
var resultArray = [0,0,0,0]
var rein = "res://Assets/TestSelectedStratagem.png"
var resu = "res://Assets/Test Stratagem .png"

func _ready():
	pass

func _process(_delta):
	if inputArray == resultArray:
		print("winner")
		inputArray.clear()

func stratagem_reinforce():
	$"../SelectedStratagemPanel/STRATAGEMS/REINFORCE/TextureRect".texture = load(rein)

func stratagem_resupply():
	$"../SelectedStratagemPanel/STRATAGEMS/REINFORCE/TextureRect".texture = load(resu)

func _on_button_pressed():
	inputArray.clear()
	resultArray = [1,1,1,2]
	stratagem_reinforce()
	print("button pressed")
	print(inputArray)
	
func _on_button_2_pressed():
	inputArray.clear()
	resultArray = [2,1,1,1]
	stratagem_resupply()
	print("button pressed 2")

func _on_left_pressed():
	inputArray.push_back(1)
	print(inputArray)

func _on_right_pressed():
	inputArray.push_back(2)
	print(inputArray)

func _on_up_pressed():
	inputArray.push_back(3)
	print(inputArray)

func _on_down_pressed():
	inputArray.push_back(4)
	print(inputArray)
