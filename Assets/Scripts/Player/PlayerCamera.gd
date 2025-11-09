extends Camera2D

@export var player: Node2D
@export var movementSpeed = 10
var interpolatedPosition = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position = interpolatedPosition
	interpolatedPosition = interpolatedPosition.move_toward(player.global_position, delta * movementSpeed)
