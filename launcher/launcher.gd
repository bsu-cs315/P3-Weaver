extends Node3D

var bird : bird

@export var force := Vector3(-2,0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	
	_make_new_bird()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta:float):
	if Input.is_action_just_pressed("launch"):
		
		bird.apply_impulse(force)
		_make_new_bird()
	


		
func _make_new_bird():
	
	bird = preload("res://birds/bird.tscn").instantiate()
	call_deferred("add_child", bird)
