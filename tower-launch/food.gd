extends Node2D
@onready var sprite_2d: Sprite2D = $Sprite2D

var interact = false
var once = false
var player: Node2D = null

#spawn variables
var count = 0.0
var maxCount = 0.5
var waitTime = count >= maxCount



func eat(player: Node2D) -> void:
	
	if interact && Input.is_action_pressed("interact") && !once && waitTime :
		if player.health < 3:
			player.health += 1
		queue_free()
	
	



func _process(delta: float) -> void:
	waitTime = count >= maxCount
	if count < maxCount:
		count += delta
	eat(player)


func _on_area_2d_body_entered(body: Node2D) -> void:
	player = body
	interact = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	interact = false
