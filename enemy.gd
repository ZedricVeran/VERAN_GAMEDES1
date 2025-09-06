extends Area2D
var speed: int
var rotation_speed: int
var direction_x: float
#called when the node enters the scenetree
func _ready():
	#starting position
	position = Vector2(875,340)
	
	var rng:= RandomNumberGenerator.new()
	var path: String = "res://Enemy/PNG/Objects_separately/256/" + str(rng.randi_range(1,3)) + ".png"
	$Sprite2D.texture = load(path)
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0,width)
	var random_y = rng.randi_range(-150,-50)
	position = Vector2(random_x, random_y)
	# randomize meteor size
	var random_scale =randf_range(0.15,.5)
	scale = Vector2(random_scale,random_scale)
	# speed / rotation / direction randomizer
	speed =rng.randi_range(200,500)
	direction_x = rng.randf_range(-1,1)
	
	
#called every single frame
func _process(delta):
	position += Vector2(direction_x, 1.0) * speed * delta
	rotation_degrees += rotation_speed * delta
func _on_body_entered(body):
	print('body entered')
	print(body)

	
