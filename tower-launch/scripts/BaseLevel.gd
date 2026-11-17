extends Node2D
@onready var mc: CharacterBody2D = $mc
@onready var camera_2d: Camera2D = $Camera2D
@onready var killzone: Area2D = $killzone
@onready var base_level: Node2D = $"."



#@onready var killzone: Area2D = $killzone
#@onready var camera_2d: Camera2D = $Camera2D
#@onready var mc: CharacterBody2D = $mc


var gemCount = 0
var maxHeight = 0
var heightTween := create_tween()
const tweenTime2 = 2
var waiting = 0


func heightChecker() -> void:
	if mc.position.y < maxHeight:
		maxHeight = mc.position.y;
		
	var resting =  mc.is_on_floor()  && mc.velocity.x == 0 && waiting >=.75 && !mc.stun
	var belowMax = mc.position.y > maxHeight
	if resting && belowMax :
		if heightTween == null || not heightTween.is_running():
			heightTween = create_tween()
			heightTween.tween_property (self, "maxHeight", mc.position.y, tweenTime2)
			killzone.position.y = maxHeight + 5
	else:
		if heightTween and heightTween.is_running():
			heightTween.kill()
	
func fallCheck() -> void:
		if killzone.fell and mc.stun:
			
			maxHeight = mc.position.y
			killzone.position.y = maxHeight + 5
			const tweenTime = 2
			var tween := create_tween()
			tween.tween_property (camera_2d, "position:y", maxHeight, tweenTime)
			killzone.fell =false
			
func cameraChange() -> void:
	if !mc.stun:
		camera_2d.position.y = maxHeight
		killzone.position.y = maxHeight + 5
		
	
func deathCheck() -> void: 
	if mc.health == 0:
		get_tree().reload_current_scene()


	
func _ready() -> void:
	pass
	
	

func _process(delta: float) -> void:

	if mc.is_on_floor() && mc.velocity.x == 0:
		waiting += delta
	else: 
		waiting = 0.0
	heightChecker()
	fallCheck()
	cameraChange()
	deathCheck()


	
