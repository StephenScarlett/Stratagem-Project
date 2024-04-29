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

func shake(node):
	node.position.x += 20
	node.position.x -= 20

func reset_children(node):
	var children = node.get_children()
	for child in children:
		if child is Control:
			child.visible = false
			child.modulate = Color("ffffff")
			child.flip_h = false
			child.flip_v = false


func check_for_successfull_input():
	var selectedStratagemPanel = $"../Arrows"
	if inputArray.size() > 0:
		var last_element = inputArray[inputArray.size() - 1]
		for i in range(min(len(inputArray), len(resultArray))):
			if inputArray[i] == resultArray[i]:
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
			else:
				reset_children(selectedStratagemPanel)
				print("restart")
				print("input: ", inputArray)
				print("result: ", resultArray)
				inputArray.clear()
					
		

func stratagem_resupply():
	$"../SelectedStratagemPanel/Stratagem Texture".texture = load(resu)

func reinforce_pressed():
	var selectedStratagemPanel = $"../Arrows"
	inputArray.clear()
	reset_children(selectedStratagemPanel)
	#Load in selected stratagem texture
	$"../Stratagem Texture".texture = load(rein)
	#Set array of arrow directions
	resultArray = ["Up","Down","Left","Right","Up"]
	
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
