extends Node2D

@export var double_spawn_chance : float = 0.2
var spawner_list
# Called when the node enters the scene tree for the first time.
func _ready():
	spawner_list = find_child("SpawnerStack").get_children()
	print(spawner_list.size())
	
func calculate_double_spawn() -> bool:
	var n : float = randf_range(0.0, 1.0)
	var double : bool = n <= double_spawn_chance
	
	return double

func command_random_spawner_for_mob():
	var rand_spawner_1 = spawner_list.pick_random()
	var is_double : bool = calculate_double_spawn()
	
	rand_spawner_1.spawn_mob()
	
	if is_double:
		print("2 boundle")
		var remaining_spawners = spawner_list.duplicate()
		remaining_spawners.erase(rand_spawner_1)
		var rand_spawner_2 = remaining_spawners.pick_random()
		
		rand_spawner_2.spawn_mob() 
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta):
	pass
	
func _on_spawn_frequency_timer_timeout():
	command_random_spawner_for_mob()
	
