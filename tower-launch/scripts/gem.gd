extends Area2D

var interact = false
var count = 0.0
var maxCount = 0.5
var waitTime = count >= maxCount


func _process(delta: float) -> void:

	waitTime = count >= maxCount
	if count < maxCount:
		count += delta
	if Input.is_action_pressed("interact") && interact && waitTime :
		get_tree().current_scene.gemCount +=1
		queue_free()


func _on_body_entered(body: Node2D) -> void:
	interact = true

func _on_body_exited(body: Node2D) -> void:
	interact = false
