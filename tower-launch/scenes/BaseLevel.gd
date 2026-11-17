extends Node2D
@onready var mc: CharacterBody2D = $mc
@onready var camera_2d: Camera2D = $Camera2D
@onready var killzone: Area2D = $killzone



#@onready var killzone: Area2D = $killzone
#@onready var camera_2d: Camera2D = $Camera2D
#@onready var mc: CharacterBody2D = $mc

var gemCount = 0
var maxHeight = 0

func heightChecker() -> void:
	if mc.position.y < maxHeight:
		maxHeight = mc.position.y;
		
func fallCheck() -> void:
		if killzone.fell and mc.stun:
			# NOTE: create a function that updates the tween speed
			
			maxHeight = mc.position.y
			killzone.position.y = maxHeight + 5
			var tween := create_tween()
			tween.tween_property (camera_2d, "position:y", maxHeight, 2.0)
			killzone.fell =false
			

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print("Max:", maxHeight)
	#print("playerheight:", mc.position.y)
	#print("playerVelolcity: ", mc.velocity.y)
	
	heightChecker()
	fallCheck()
	
	if !mc.stun:
		camera_2d.position.y = maxHeight
		killzone.position.y = maxHeight + 5
	if mc.health == 0:
		get_tree().reload_current_scene()
func _on_door_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
