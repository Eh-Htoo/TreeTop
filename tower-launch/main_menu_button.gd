extends Control

@export_file("*.tscn") var change_scene_path: String


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file( change_scene_path)
