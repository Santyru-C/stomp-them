extends CharacterBody2D

@export var speed : float = 250
@export var direction : int = 1

func _ready():
	velocity = Vector2(0, direction * speed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_slide()
