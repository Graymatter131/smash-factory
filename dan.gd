extends CharacterBody2D

signal health_depleted


func _physics_process(delta):
	const SPEED = 300.0
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * SPEED

	move_and_slide()

	#if velocity.length() > 0.0:
		#%HappyBoo.play_walk_animation()
	#else:
		#%HappyBoo.play_idle_animation()

	## Taking damage
	#const DAMAGE_RATE = 6.0
	#var overlapping_mobs = %HurtBox.get_overlapping_bodies()
	#if overlapping_mobs:
		#health -= DAMAGE_RATE * overlapping_mobs.size() * delta
		#%HealthBar.value = health
		#if health <= 0.0:
			#health_depleted.emit()


func _on_button_pressed() -> void:
	pass # Replace with function body.
