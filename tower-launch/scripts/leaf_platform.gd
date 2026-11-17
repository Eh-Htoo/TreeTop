extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
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
	
	animation_player.play("shake")
	#await animation_player.animation_finished
	await get_tree().create_timer(2).timeout
	
	sprite_2d.visible = false
	area_2d.monitoring = false
	collision_shape_2d.disabled = true;
	
	
	
	await get_tree().create_timer(2).timeout
	
	sprite_2d.visible = true
	area_2d.monitoring = true
	collision_shape_2d.disabled = false;
	
	
	
	#sprite_2d.visible = false
	#area_2d.monitoring = false
	#collision_shape_2d.disabled = true
	
		
