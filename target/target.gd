extends Area3D

signal hit

func _on_body_entered(_body):
	hit.emit()
	queue_free()
