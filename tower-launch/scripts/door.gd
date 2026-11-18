extends Area2D
var unlocked = false
var inDoor = false


@export_file("*.tscn") var change_scene_path: String

func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if inDoor == true and unlocked == true and  Input.is_action_just_pressed("Jump"):
		get_tree().change_scene_to_file( change_scene_path)



func _on_body_entered( Node2D) -> void:
	print("in door")
	inDoor = true
	

func _on_body_exited( Node2D) -> void:
	print("out of door")
	inDoor = false
