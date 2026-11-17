extends Area2D

@onready var spike_body: RigidBody2D = $".."



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _on_body_entered(body: Node2D) -> void:
	body.health -= 1
	body.stun = true
	await get_tree().create_timer(3).timeout
	body.stun = false
