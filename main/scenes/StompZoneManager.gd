extends Node2D

var stomp_zone_list
var current_stomps : int = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	stomp_zone_list = find_child("StompZoneStack").get_children()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input()

func order_stomp(zone_list_number):
	print("action pressed")
	stomp_zone_list[zone_list_number].stomp()
	
func get_input():
	if Input.is_action_just_pressed("stomp_1"):
		order_stomp(0)
		
	if Input.is_action_just_pressed("stomp_2"):
		order_stomp(1)
		
	if Input.is_action_just_pressed("stomp_3"):
		order_stomp(2)
		
	if Input.is_action_just_pressed("stomp_4"):
		order_stomp(3)

	print(current_stomps)
	
	
