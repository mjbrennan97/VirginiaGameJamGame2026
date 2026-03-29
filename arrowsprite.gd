extends Sprite2D

func _on_mouse_entered():
	$"Panel/GridContainer".visible = true

func _on_mouse_exited():
	$"Panel/GridContainer".visible = false
