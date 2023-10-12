extends Node3D

var charge_power = 0 

@export var force := Vector3(-500,-5,-500)
@onready var bird = preload("res://birds/bird.tscn")


# Called when the node enters the scene tree for the first time.
#func _ready():
#	_make_new_bird()



func _process(_delta:float):
	if Input.is_action_pressed("launch"):
		charge_power += .1
		print (charge_power)
	if Input.is_action_just_released("launch"):
		_make_new_bird(charge_power*force)
		charge_power = 0
	elif (charge_power >= 5): 
		_make_new_bird(charge_power*force)
		charge_power = 0

		
func _make_new_bird(launch_power):
	var bird_inst = bird.instantiate()
	get_tree().get_root().get_child(0).add_child(bird_inst)
	bird_inst.global_transform = $launch_point_3d.global_transform
	bird_inst.apply_central_impulse(launch_power*-self.global_transform.basis.z)
