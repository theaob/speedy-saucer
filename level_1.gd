extends Node2D

func _ready():
	print("Starting Level 1")


func _on_maze_body_exited(_body):
	print("Body exited. Reloading scene...")
	get_tree().call_deferred("reload_current_scene")
	pass # Replace with function body.
