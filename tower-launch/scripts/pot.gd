extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D

@export var spawn_scene: PackedScene


var interaction= false
var spawnOnce = false


func breakObj() -> void:
	if interaction == true && Input.is_action_just_pressed("interact") && !spawnOnce:
		var object := spawn_scene.instantiate()
		sprite_2d.visible = false
		add_child(object)
		spawnOnce = true
		
		
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	breakObj()
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	interaction = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	interaction = true
