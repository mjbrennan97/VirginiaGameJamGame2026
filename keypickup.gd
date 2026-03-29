extends Area2D

@export var item: InventoryItemData
@onready var pickup_sound = preload("res://assets/songs/keyswipe.wav")

func _ready():
	input_pickable = true
	

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			InventoryManager.add_item(item)
			
			var player = AudioStreamPlayer.new()
			get_tree().current_scene.add_child(player)
			player.stream = pickup_sound
			player.play()
			
			
			queue_free()
