extends Polygon2D





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	%PathFollow2D.set_progress_ratio(%PathFollow2D.get_progress_ratio()+0.0002)
	global_position = %PathFollow2D.global_position
	rotation = %PathFollow2D.rotation
	pass
