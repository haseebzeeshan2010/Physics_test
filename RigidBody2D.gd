extends RigidBody2D
var impulse_strength = 38
var drag_change = 0
var new_skid = 0
var remove_skid = false
func _physics_process(delta):
	#look_at(get_global_mouse_position())
	
	#SKID CODE
	var speed = linear_velocity.length()
	if speed > 600 and speed < 1000 and (angular_velocity > 0.05 or angular_velocity < -0.05):
		#print("DRAG")
		#print(speed)
		if new_skid == 0:
			remove_skid = false
			%Trail.skid()
			%Trail2.skid()

	else:
		remove_skid = true
		new_skid = %Trail.get_point_count()
		
	if remove_skid == true:
		%Trail.remove_point(0)
		%Trail2.remove_point(0)
		%Trail.top_level = true
		%Trail2.top_level = true
		#%Skid_mark2.remove_point(0)

	
	#TURNING CODE
	if Input.is_action_pressed("mouse_acceleration"):
		set_linear_damp(1.4)
		impulse_strength = 38
		var m = get_global_mouse_position()
		var aim_speed = deg_to_rad(1)
		if get_angle_to(m) < 0.02 and get_angle_to(m) > -0.2:
			constant_torque = 0
		else:
			if get_angle_to(m) > 0:
				constant_torque = 30000
			else:
				constant_torque = -30000
	
	else:
		set_linear_damp(2.8)
		impulse_strength = 0
		constant_torque = 0
	
	#THRUST CODE
	var angle = rotation
	
	if position.distance_to(get_global_mouse_position()) > 5:
		apply_central_impulse(Vector2(cos(angle), sin(angle)) * impulse_strength)
	#print(get_angle_to(get_global_mouse_position()))
	
	

#func skid():
	#drag_change += 1
	##%Skid_mark.add_point(%Skid_mark.global_position)
	##%Skid_mark2.add_point(global_position)
	##while %Skid_mark.get_point_count() > 50:
		##%Skid_mark.remove_point(0)
		##%Skid_mark2.remove_point(0)
		##
	##drag_change = %Skid_mark.get_point_count()


