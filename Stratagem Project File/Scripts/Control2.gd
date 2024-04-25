extends Control

class_name ButtonMap

var inputArray = []
var resultArray = [0,0,0,0,0]

func _ready():
	pass 

func _clearinputarray():
	inputArray.clear()

func _process(delta):
	if (inputArray == resultArray):
		print("winner")
		inputArray.clear()
		
	#for x in resultArray.size():
		#match x:
			#1:
				#if (inputArray[x] == resultArray[x]):
					#$"../SelectedStratagemPanel/REINFORCE/g1".visble = true

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
