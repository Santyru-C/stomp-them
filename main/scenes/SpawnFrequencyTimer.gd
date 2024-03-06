extends Timer

@export var spawn_frequency : float = 1 # in seconds

# Called when the node enters the scene tree for the first time.
func _ready():
	autostart = true
	wait_time = spawn_frequency
	start()

func _process(delta):
	pass
