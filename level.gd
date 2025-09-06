extends Node2D


var enemy_scene: PackedScene = load("res://enemy.tscn")
func _on_enemy_timer_timeout() -> void:
#2. create an instance
	var enemy = enemy_scene.instantiate()
#3. attach the node to the scene tree
	$Enemy.add_child(enemy)
	print("test")
