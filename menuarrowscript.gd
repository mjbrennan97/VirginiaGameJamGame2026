extends Sprite2D

@onready var menu = $""

var menu_hidden_pos: Vector2
var menu_visible_pos: Vector2
var is_hidden = true

func _ready():
	menu_visible_pos = menu.position
	menu_hidden_pos = menu.position + Vector2(-300, 0)
	menu.position = menu_hidden_pos

func _on_mouse_entered():
	_slide_menu(false)

func _on_mouse_exited():
	_slide_menu(true)

func _slide_menu(hide: bool):
	var tween = create_tween()
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CUBIC)
	if hide:
		tween.tween_property(menu, "position", menu_hidden_pos, 0.3)
	else:
		tween.tween_property(menu, "position", menu_visible_pos, 0.3)
