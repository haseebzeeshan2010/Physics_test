extends RigidBody2D
var impulse_strength = 38

func _physics_process(delta):
	#look_at(get_global_mouse_position())
	
	var angle = rotation
	
	if position.distance_to(get_global_mouse_position()) > 5:
		apply_central_impulse(Vector2(cos(angle), sin(angle)) * impulse_strength)
	#print(get_angle_to(get_global_mouse_position()))
	
	
		
	
	#STARBLAST LIKE ROTATION
	var m = get_global_mouse_position()
	var aim_speed = deg_to_rad(1)
	if get_angle_to(m) < 0.02 and get_angle_to(m) > -0.2:
		constant_torque = 0
		#constant_torque = -constant_torque
	else:
		if get_angle_to(m) > 0:
			constant_torque = 60000
			#rotation = lerp(rotation,rotation+aim_speed,delta*300)
			#angular_velocity = 10
		else:
			constant_torque = -60000
			#rotation = lerp(rotation,rotation-aim_speed,delta*300)
			#angular_velocity = -10

