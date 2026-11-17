extends Camera2D

@onready var mc: CharacterBody2D = $"../mc"
@onready var heart_1: Sprite2D = $Heart1
@onready var heart_2: Sprite2D = $heart2
@onready var heart_3: Sprite2D = $Heart3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if mc.health == 3:
		heart_1.visible = true
		heart_2.visible = true
		heart_3.visible = true
	if mc.health == 2:
		heart_1.visible = true
		heart_2.visible = true
		heart_3.visible = false
	if mc.health == 1:	
		heart_1.visible = true
		heart_2.visible = false
		heart_3.visible = false
