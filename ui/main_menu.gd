extends Control

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	$jukebox.play_menu_music()

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://world/world.tscn")
