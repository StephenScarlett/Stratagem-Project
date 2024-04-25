extends StratagemParent

class_name Stratagem

var stratagem_parent = StratagemParent.new()
var rein = "res://Assets/TestSelectedStratagem.png"
var resu = "res://Assets/Test Stratagem .png"

func _ready():
	pass

#func _process(_delta):
	#stratagem_parent.make_children_invisible()

func stratagem_reinforce():
	
	#stratagem_parent.set_visible(false)
	#stratagem_parent.make_children_invisible()
	#stratagem_reinforce().visible = true;
	
	$"../SelectedStratagemPanel/STRATAGEMS/REINFORCE/TextureRect".texture = load(rein)
	
	#$"../SelectedStratagemPanel/STRATAGEMS/REINFORCE".visible = true
	#$"../SelectedStratagemPanel/STRATAGEMS/RESUPPLY".visible = false
	
	#print("make chilren invis")
	#$"../SelectedStratagemPanel/STRATAGEMS".propagate_call("set_visible",[false])
	
	
func stratagem_resupply():
	$"../SelectedStratagemPanel/STRATAGEMS/REINFORCE/TextureRect".texture = load(resu)
	#stratagem_parent.hide();
	#$"../SelectedStratagemPanel/STRATAGEMS".visible = false
	#$"../SelectedStratagemPanel/STRATAGEMS/RESUPPLY".visible = true
	#$"../SelectedStratagemPanel/STRATAGEMS/REINFORCE".visible = false

func _on_button_pressed():
	var arrayObject = ButtonMap.new()
	arrayObject.inputArray.clear()
	arrayObject.resultArray = [1,1,1,2]
	stratagem_reinforce()
	print("button pressed")
	
func _on_button_2_pressed():
	var arrayObject = ButtonMap.new()
	arrayObject.inputArray.clear()
	arrayObject.resultArray = [2,2,2,1]
	stratagem_resupply()
	print("button pressed 2")
