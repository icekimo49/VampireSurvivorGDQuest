extends CharacterBody2D


@onready var happy_boo = $HappyBoo

func _physics_process(delta):
	var arah = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = arah * 500
	move_and_slide()
	
	if velocity.length() > 0.0:
		happy_boo.play_walk_animation()
	elif velocity.length()== 0.0 :
		happy_boo.play_idle_animation()
		