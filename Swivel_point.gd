extends Node2D

func _physics_process(delta):
	print(get_parent().rotation)
	rotation = get_parent().rotation
