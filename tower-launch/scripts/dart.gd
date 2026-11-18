extends Node2D

var velocity := Vector2.ZERO
var state = ""
const SPEED = 200

#func up (delta: float) -> void:
	#if state == "up":
		#rotation_degrees -90
		#velocity.y += -10 * delta	
#func down (delta: float) -> void:
	#if state == "down":
		#rotation_degrees = 90
		#velocity.y += 10 * delta
#func right (delta: float) -> void:
	#if state == "right":
		#velocity.x += 10 * delta
#func left (delta: float) -> void:
	#if state == "left":
		#rotation_degrees = 180
		#velocity.x += -10 * delta

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	match state:
		"up":
			rotation_degrees = -90
			velocity = Vector2.UP * SPEED
		"down":
			rotation_degrees = 90
			velocity = Vector2.DOWN * SPEED
		"right":
			velocity = Vector2.RIGHT * SPEED
		"left": 
			rotation_degrees = 180
			velocity = Vector2.LEFT * SPEED
			



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position += velocity * delta
