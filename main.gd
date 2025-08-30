extends Node2D



func _ready():
	$Label.text= 'testing'
	$Label.modulate = Color.AQUA



func _input(event):
	if event.is_action_pressed("my_action"):
		$Label.modulate = Color.GREEN
	if event.is_action_released("my_action"):
		$Label.modulate = Color.RED



#func _process():
	#pass
