extends Node2D

var mob = preload("res://scenes/mob.tscn")

func _ready():
	print("Running Spawner.gd")
	
func spawn_mob():
	var mob_instance = mob.instantiate()
	add_child(mob_instance) # actually the mob instance does not have to be a child of this scene but this will do for now

