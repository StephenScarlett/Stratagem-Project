extends Control

class_name Stratagem

var inputArray = []
var resultArray = ["empty", "array"]
var rein = "res://Assets/Reinforce.png"
var resu = "res://Assets/Resupply.png"

func _ready():
	pass

func _process(_delta):
	

				
	
	
	if inputArray == resultArray:
		print("winner")
		inputArray.clear()

func check_for_successfull_input():
	if inputArray.size() > 0:
		var last_element = inputArray[inputArray.size() - 1]
		for i in range(inputArray.size()):
			var selectedStratagemPanel = $"../Arrows"
			if last_element == resultArray[i]:
				if last_element == "Left":
					var arrow_node_name = "L" + str(i + 1)
					var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
					if arrow_node:
						arrow_node.modulate = Color("0fca0d")
				elif last_element == "Right":
					var arrow_node_name = "L" + str(i + 1)
					var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
					if arrow_node:
						arrow_node.modulate = Color("0fca0d")
				elif last_element == "Up":
					var arrow_node_name = "U" + str(i + 1)
					var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
					if arrow_node:
						arrow_node.modulate = Color("0fca0d")
				elif last_element == "Down":
					var arrow_node_name = "U" + str(i + 1)
					var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
					if arrow_node:
						arrow_node.modulate = Color("0fca0d")

func stratagem_resupply():
	$"../SelectedStratagemPanel/Stratagem Texture".texture = load(resu)

func reinforce_pressed():
	inputArray.clear()
	
	#Load in selected stratagem texture
	$"../Stratagem Texture".texture = load(rein)
	#Set array of arrow directions
	resultArray = ["Up","Down","Left","Right","Up"]
	var selectedStratagemPanel = $"../Arrows"
	for child in selectedStratagemPanel.get_children():
		child.visible = false
	
	for i in range(resultArray.size()):
		if resultArray[i] == "Left":
			var arrow_node_name = "L" + str(i + 1)
			var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
			if arrow_node:
				arrow_node.visible = true
		elif resultArray[i] == "Right":
			var arrow_node_name = "L" + str(i + 1)
			var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
			if arrow_node:
				arrow_node.flip_h = true
				arrow_node.visible = true
		elif resultArray[i] == "Up":
			var arrow_node_name = "U" + str(i + 1)
			var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
			if arrow_node:
				arrow_node.visible = true
		elif resultArray[i] == "Down":
			var arrow_node_name = "U" + str(i + 1)
			var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
			if arrow_node:
				arrow_node.flip_h = true
				arrow_node.visible = true

	
func resupply_pressed():
	inputArray.clear()
	#Load in selected stratagem texture
	$"../Stratagem Texture".texture = load(resu)
	#Set array of arrow directions
	resultArray = ["Down","Down","Up","Right"]
	var selectedStratagemPanel = $"../Arrows"
	for child in selectedStratagemPanel.get_children():
		child.visible = false
	for i in range(resultArray.size()):
		if resultArray[i] == "Left":
			var arrow_node_name = "l" + str(i + 1)
			var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
			if arrow_node:
				arrow_node.visible = true
		elif resultArray[i] == "Right":
			var arrow_node_name = "r" + str(i + 1)
			var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
			if arrow_node:
				arrow_node.visible = true
		elif resultArray[i] == "Up":
			var arrow_node_name = "u" + str(i + 1)
			var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
			if arrow_node:
				arrow_node.visible = true
		elif resultArray[i] == "Down":
			var arrow_node_name = "d" + str(i + 1)
			var arrow_node = selectedStratagemPanel.get_node(arrow_node_name)
			if arrow_node:
				arrow_node.visible = true

func supplyPack_pressed():
	inputArray.clear()
	resultArray = [2,1,1,1]
	stratagem_resupply()

func orbitalLaser_pressed():
	inputArray.clear()
	resultArray = [2,1,1,1]
	stratagem_resupply()

func orbitalAirburst_pressed():
	inputArray.clear()
	resultArray = [2,1,1,1]
	stratagem_resupply()

func mortarSentry_pressed():
	inputArray.clear()
	resultArray = [2,1,1,1]
	stratagem_resupply()

func machineGun_pressed():
	inputArray.clear()
	resultArray = [2,1,1,1]
	stratagem_resupply()



func _on_left_pressed():
	inputArray.push_back("Left")
	check_for_successfull_input()
	

func _on_right_pressed():
	inputArray.push_back("Right")
	check_for_successfull_input()

func _on_up_pressed():
	inputArray.push_back("Up")
	check_for_successfull_input()

func _on_down_pressed():
	inputArray.push_back("Down")
	check_for_successfull_input()
