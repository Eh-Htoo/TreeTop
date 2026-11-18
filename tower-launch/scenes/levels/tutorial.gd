extends Node2D

@onready var mc: CharacterBody2D = $baseLevel/mc
@onready var door: Area2D = $interactables/Door

var gemCount = 0
var totalGems = 4
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mc.health -= 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if gemCount == totalGems:
		door.unlocked = true
