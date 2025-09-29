extends AnimatedSprite2D

const SPEED = 60
var direction = 1
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft



func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		var collider = ray_cast_right.get_collider()
		if collider and collider.name != "player1":  # or collider.is_in_group("player")
			direction = -1

	elif ray_cast_left.is_colliding():
		var collider = ray_cast_left.get_collider()
		if collider and collider.name != "player1":
			direction = 1
	position.x += SPEED * delta * direction
