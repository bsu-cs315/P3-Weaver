extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$hud.set_launcher($player_body/launcher)
