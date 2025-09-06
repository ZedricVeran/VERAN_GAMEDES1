extends CharacterBody2D
@export var speed = 500

#called when the node enters the scenetree
func _ready():
	#starting position
	var shots = $laser/Shots
	shots.play("Attack")
	position = Vector2(50,330)
	#Size
	
#called every single frame
func _process(delta):
	#part 1 and part 4 (velocity)
	#if Input.is_action_pressed("ui_right"):
		#position += Vector2(2,0) * 70 * delta
	#if Input.is_action_pressed("ui_left"):
		#position += Vector2(-2,0) * 70 * delta	
	#if Input.is_action_pressed("ui_up"):
		#position += Vector2(0,-2) * 70 * delta	
	#if Input.is_action_pressed("ui_down"):
		#position += Vector2(0,2) * 70 * delta	
	
#	#part 2 and part 4 (velocity)
	#if Input.is_action_pressed("right"):
		#position += Vector2(2,0) * 70 * delta
	#if Input.is_action_pressed("left"):
		#position += Vector2(-2,0) * 70 * delta	
	#if Input.is_action_pressed("up"):
		#position += Vector2(0,-2) * 70 * delta	
	#if Input.is_action_pressed("down"):
		#position += Vector2(0,2) * 70 * delta

		
	#part 3 collision
	var direction = Input.get_vector("left", "right", "up", "down")	
	velocity = direction * speed
	move_and_slide()
