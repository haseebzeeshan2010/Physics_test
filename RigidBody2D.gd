extends RigidBody2D
var impulse_strength = 20

func _physics_process(delta):
	look_at(get_global_mouse_position())
	
	var angle = rotation
	
	if position.distance_to(get_global_mouse_position()) > 5:
		apply_central_impulse(Vector2(cos(angle), sin(angle)) * impulse_strength)
	#print(get_angle_to(get_global_mouse_position()))
	
	
		
	
	#STARBLAST LIKE ROTATION
	#var m = get_global_mouse_position()
	#var aim_speed = deg_to_rad(5)
	#if get_angle_to(m) < 0.08 and get_angle_to(m) > -0.3:
		#rotation = rotation
	#else:
		#if get_angle_to(m) > 0:
			#rotation += aim_speed
		#else:
			#rotation -= aim_speed
	

