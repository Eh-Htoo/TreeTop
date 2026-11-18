extends Node2D



@onready var gem: Area2D = $gems/Gem
@onready var gem_2: Area2D = $gems/Gem2
@onready var door: Area2D = $Door
@onready var pot: Node2D = $Pot

var gemCount = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(float) -> void:
	if gemCount == 3:
		door.unlocked = true
	
