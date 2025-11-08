extends CharacterBody2D


@export var speed = 300.0
@export var retardation = 10


func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionX := Input.get_axis("ui_left", "ui_right")
	var directionY := Input.get_axis("ui_up", "ui_down")
	var movement = Vector2(directionX, directionY)
	if movement.length() != 0:
		velocity = movement * speed
	else:
		velocity *= 1 - retardation * delta

	move_and_slide()
