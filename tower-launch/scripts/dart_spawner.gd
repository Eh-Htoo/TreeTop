extends Node2D
@onready var spawner: Area2D = $Spawner
@onready var pressure_plate: Area2D = $pressurePlate
var Dart = preload("res://scenes/Objects/dart.tscn")
@export var direction: String = "default"

func createDart() -> void:
	if pressure_plate.pressed == true:
		var instance = Dart.instantiate()
		instance.state = direction
		instance.position = spawner.position
		add_child(instance)
		pressure_plate.pressed = false
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	createDart()
		
