# attach this to a Panel node that sits behind/over the same area as your GridContainer
extends Panel

@onready var grid = $"Panel/GridContainer"  # adjust path

func _ready():
	mouse_filter = Control.MOUSE_FILTER_STOP
	self_modulate = Color(1, 1, 1, 0)  # fully transparent but still detects hover
	mouse_entered.connect(func(): grid.visible = true)
	mouse_exited.connect(func(): grid.visible = false)
