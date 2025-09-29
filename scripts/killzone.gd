extends Area2D
@onready var timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player1":
		print("hi")
		body.get_node("CollisionShape2D").queue_free()
		Engine.time_scale = 0.5
		var label = get_tree().current_scene.get_node("Killzone/UI/Label")
		label.visible = true
		timer.start()


	


func _on_timer_timeout() -> void:
	print("Hello")
	Engine.time_scale = 1
	get_tree().reload_current_scene()
