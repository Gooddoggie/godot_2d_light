extends CharacterBody2D

var speed:int = 100

func _physics_process(delta):
	look_at(get_global_mouse_position())
	
	velocity.x = int(Input.is_action_pressed("right")) - int(Input.is_action_pressed("left"))
	velocity.y = int(Input.is_action_pressed("down")) - int(Input.is_action_pressed("up"))
	
	velocity = velocity.normalized() * speed
	
	move_and_slide()
