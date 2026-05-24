extends RigidBody2D

func _ready() -> void:
	# Оставляем пустым при создании болта
	pass

func release() -> void:
	freeze = false # Включаем физику гравитации для болта
	
	# Слегка подталкиваем болт в случайную сторону вверх и вбок, как при реальном откручивании
	apply_central_impulse(Vector2(randf_range(-60, 60), -120))
	
	# Удаляем болт через 3 секунды падения
	await get_tree().create_timer(3.0).timeout
	queue_free()
