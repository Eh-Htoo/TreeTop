extends Area2D

@onready var rigid_body_2d: RigidBody2D = $"../spikeBody"



func _on_body_entered(body: Node2D) -> void:
	
	rigid_body_2d.set_deferred("freeze", false)
