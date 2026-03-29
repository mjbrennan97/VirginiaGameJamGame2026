extends GridContainer

func _ready():
	visible = false
	mouse_filter = Control.MOUSE_FILTER_STOP
	mouse_entered.connect(func(): visible = true)
	mouse_exited.connect(func(): visible = false)
