extends Node3D

const _ROTATION_DEGREES_PER_SECOND := 180

var charge_power = 0 
var _angle := 0.0

@export var force := Vector3(-300,0,-300)
@onready var bird = preload("res://birds/bird.tscn")


# Called when the node enters the scene tree for the first time.
#func _ready():
#	_make_new_bird()



func _process(delta:float):
#	var original_angle := _angle
	
	if Input.is_action_just_pressed("increment_angle"):
		_angle -= _ROTATION_DEGREES_PER_SECOND * delta
	elif Input.is_action_just_pressed("decrement_angle"):
		_angle += _ROTATION_DEGREES_PER_SECOND * delta
	
	_angle = clampf(_angle, -90, 0)
	
	var current_force = Vector3(force.x, ((_angle/20)+1), force.z)
	
	
	
	if Input.is_action_pressed("launch"):
		charge_power += .1
		
	if Input.is_action_just_released("launch"):
		_make_new_bird(charge_power*current_force)
		charge_power = 0
	elif (charge_power >= 5): 
		_make_new_bird(charge_power*current_force)
		charge_power = 0

		
func _make_new_bird(launch_power):
	var bird_inst = bird.instantiate()
	get_tree().get_root().get_child(0).add_child(bird_inst)
	bird_inst.global_transform = $launch_point_3d.global_transform
	bird_inst.apply_central_impulse(launch_power*-self.global_transform.basis.z)
