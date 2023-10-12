extends Node


func _ready():
	$hud.set_launcher($player_body/launcher)
	$jukebox.play_bg_music()

