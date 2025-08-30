extends Node2D

#called when the node enters the scenetree
func _ready():
	#starting position
	position = Vector2(875,340)
	#Size
	
#called every single frame
func _process(delta):
	position += Vector2(0,0.1) * 70 * delta

	
