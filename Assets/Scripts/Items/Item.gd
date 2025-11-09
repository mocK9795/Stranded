extends Node2D


@export var floatTime = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# Floating Animation
	floatTime += ItemManager.itemFloatSpeed
	var movement = Vector2(0, cos(floatTime)) * ItemManager.itemFloat
	transform.origin += movement * delta

	# Rotation
	rotation = (transform.looking_at(ItemManager.playerPosition).get_rotation())
