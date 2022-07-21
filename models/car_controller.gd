extends VehicleBody3D

func _physics_process(delta):
	steering = lerp(steering, Input.get_axis("right", "left") * 0.4, 5*delta)
	if Input.is_action_pressed("space"):
		brake = 5
	elif brake != 0:
		brake = 0

