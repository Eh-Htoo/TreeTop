extends Node2D
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var area_2d: Area2D = $Area2D
@onready var collision_shape_2d: CollisionShape2D = $StaticBody2D/CollisionShape2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass





func _on_area_2d_body_entered(body: Node2D) -> void:
	
	await get_tree().create_timer(2).timeout
	
	queue_free()
	#sprite_2d.visible = false
	#area_2d.monitoring = false
	#collision_shape_2d.disabled = true
	
		
