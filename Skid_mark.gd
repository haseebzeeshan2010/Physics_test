extends Line2D

func _physics_process(delta):
	
	add_point(get_parent().global_position)
	#print(get_parent().position)
