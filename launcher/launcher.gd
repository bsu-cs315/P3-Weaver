extends Node3D



@export var force := Vector3(-1000,-10,-1000)
@onready var bird = preload("res://birds/bird.tscn")

# Called when the node enters the scene tree for the first time.
#func _ready():
#	_make_new_bird()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta:float):
	if Input.is_action_just_pressed("launch"):
		_make_new_bird()



		
func _make_new_bird():
	var bird_inst = bird.instantiate()
	get_tree().get_root().get_child(0).add_child(bird_inst)
	bird_inst.global_transform = $launch_point_3d.global_transform
	bird_inst.apply_central_impulse(force*-self.global_transform.basis.z)
