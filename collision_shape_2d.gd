# Attach this to your CharacterBody2D
extends CharacterBody2D

# Speed in pixels per second
var speed = 200

func _physics_process(delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	# Normalize to prevent faster diagonal movement
	if direction != Vector2.ZERO:
		direction = direction.normalized()

	# Move the character
	velocity = direction * speed
	move_and_slide()
