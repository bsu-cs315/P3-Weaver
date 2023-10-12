extends Node2D

func play_bg_music()->void:
	$bg_music.play()
func play_menu_music()->void:
	$menu_music.play()
func play_hit_sound()->void:
	$hit_sound.play()
func play_win_sound()->void:
	$win_sound.play()
