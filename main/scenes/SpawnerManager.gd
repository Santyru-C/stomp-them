extends Node2D

var spawner_list
# Called when the node enters the scene tree for the first time.
func _ready():
	spawner_list = find_child("SpawnerStack").get_children()
	print(spawner_list.size())

func command_random_spawner_for_mob():
	var n : int = randi_range(0, spawner_list.size() - 1)
	spawner_list[n].spawn_mob()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_spawn_frequency_timer_timeout():
	print("timer out")
	command_random_spawner_for_mob()
	
