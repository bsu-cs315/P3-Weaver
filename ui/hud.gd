extends Control


var score = 9

func set_launcher(launcher) -> void:
	launcher.angle_changed.connect(_on_launcher_angle_changed)
	_update_angle_label(launcher.get_angle())
	
	launcher.charge_power_changed.connect(_on_launcher_charge_power_changed)
	_update_charge_power_label(launcher.get_charge_power())


func _on_launcher_angle_changed(new_angle:float) -> void:
	_update_angle_label(new_angle)


func _on_launcher_charge_power_changed(new_charge_power:float) -> void:
	
	_update_charge_power_label(new_charge_power)

func _update_angle_label(new_angle:float)->void:
	$angle_label.text = "Angle: %d" % -new_angle
	
func _update_charge_power_label(new_charge_power:float)->void:
	$power_label.text = "Charge Power: %d" % -new_charge_power
	

func _on_target_1_hit():
	score -= 1
	$score_label.text = "Targets Left: %d" % (score)
func _on_target_2_hit():
	score -= 1
	$score_label.text = "Targets Left: %d" % (score)
func _on_target_3_hit():
	score -= 1
	$score_label.text = "Targets Left: %d" % (score)
func _on_target_4_hit():
	score -= 1
	$score_label.text = "Targets Left: %d" % (score)
func _on_target_5_hit():
	score -= 1
	$score_label.text = "Targets Left: %d" % (score)
func _on_target_6_hit():
	score -= 1
	$score_label.text = "Targets Left: %d" % (score)
func _on_target_7_hit():
	score -= 1
	$score_label.text = "Targets Left: %d" % (score)
func _on_target_8_hit():
	score -= 1
	$score_label.text = "Targets Left: %d" % (score)
func _on_target_9_hit():
	score -= 1
	$score_label.text = "Targets Left: %d" % (score)
