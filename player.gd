extends Node2D
@export var speed = 400
#called when the node enters the scenetree
func _ready():
	#starting position
	position = Vector2(50,330)
	#Size
	
#called every single frame
func _process(delta):
	#part 1
	if Input.is_action_pressed("ui_right"):
		position += Vector2(2,0) * 70 * delta
	if Input.is_action_pressed("ui_left"):
		position += Vector2(-2,0) * 70 * delta	
	if Input.is_action_pressed("ui_up"):
		position += Vector2(0,-2) * 70 * delta	
	if Input.is_action_pressed("ui_down"):
		position += Vector2(0,2) * 70 * delta	
	
#	#part 2
	if Input.is_action_pressed("right"):
		position += Vector2(2,0) * 70 * delta
	if Input.is_action_pressed("left"):
		position += Vector2(-2,0) * 70 * delta	
	if Input.is_action_pressed("up"):
		position += Vector2(0,-2) * 70 * delta	
	if Input.is_action_pressed("down"):
		position += Vector2(0,2) * 70 * delta
		
	#part 3 collision
