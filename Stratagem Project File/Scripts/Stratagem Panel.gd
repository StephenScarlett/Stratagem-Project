extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_scroll_container_scroll_started():
	print("scroll start")


func _on_scroll_container_scroll_ended():
	print("scroll end")
