extends CharacterBody2D

@export var speed = 500.0
@onready var jiggle_sound = $AudioStreamPlayer

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right") or Input.is_key_pressed(KEY_D):
		direction.x += 1
		jiggle_sound.play()
	if Input.is_action_pressed("ui_left") or Input.is_key_pressed(KEY_A):
		direction.x -= 1
		jiggle_sound.play()
	if Input.is_action_pressed("ui_up") or Input.is_key_pressed(KEY_W):
		direction.y -= 1
		jiggle_sound.play()
	if Input.is_action_pressed("ui_down") or Input.is_key_pressed(KEY_S):
		direction.y += 1
		jiggle_sound.play()

	velocity = direction.normalized() * speed
	move_and_slide()
