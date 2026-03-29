extends Area2D

@export var item: InventoryItemData
@onready var jiggle_sound = $screwplayer

func _ready():
	input_pickable = true

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			InventoryManager.add_item(item)
			var temp_sound = AudioStreamPlayer.new()
			get_tree().current_scene.add_child(temp_sound)
			temp_sound.stream = jiggle_sound.stream
			temp_sound.volume_db = jiggle_sound.volume_db
			temp_sound.pitch_scale = jiggle_sound.pitch_scale
			temp_sound.play()



			queue_free()
