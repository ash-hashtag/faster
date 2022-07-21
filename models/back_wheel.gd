extends VehicleWheel3D

const max_rpm := 500
const max_torque := 200

func _physics_process(delta):
	engine_force = Input.get_axis("backward", "forward") * max_torque * (1 - get_rpm() / max_rpm)
