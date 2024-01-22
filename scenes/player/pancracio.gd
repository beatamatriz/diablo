extends CharacterBody2D

const SPEED = 200.0

func _ready():
	pass

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED
	if(velocity.x < 0):
		$Sprite.set_flip_h(false)
		$Sprite.set_position(Vector2(-11,-27))
	elif(velocity.x != 0):
		$Sprite.set_flip_h(true)
		$Sprite.set_position(Vector2(11,-27))
	if(Input.is_action_pressed("ui_accept")):
		$Yipee.play()
	move_and_slide()

