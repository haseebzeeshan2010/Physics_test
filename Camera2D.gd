extends Camera2D
#
func _physics_process(delta):
	global_position = lerp(global_position, get_parent().global_position, delta*12) #smooth out camera
	#set_global_transform(get_parent().get_global_transform())
	
