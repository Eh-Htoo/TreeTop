extends Area2D
var unlocked = false
var inDoor = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if inDoor == true and unlocked == true and  Input.is_action_just_pressed("Jump"):
		get_tree().change_scene_to_file("res://scenes/levels/mainMenu.tscn")



func _on_body_entered( Node2D) -> void:
	print("in door")
	inDoor = true
	

func _on_body_exited( Node2D) -> void:
	print("out of door")
	inDoor = false
