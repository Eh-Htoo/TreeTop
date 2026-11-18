extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var area_2d: Area2D = $Area2D
@onready var collision_shape_2d: CollisionShape2D = $StaticBody2D/CollisionShape2D




func _on_area_2d_body_entered(Node2D) -> void:
	
	animation_player.play("shake")

	await get_tree().create_timer(2).timeout
	
	sprite_2d.visible = false
	area_2d.monitoring = false
	collision_shape_2d.disabled = true;
	
	
	
	await get_tree().create_timer(2).timeout
	
	sprite_2d.visible = true
	area_2d.monitoring = true
	collision_shape_2d.disabled = false;
	
	
	
	
		
