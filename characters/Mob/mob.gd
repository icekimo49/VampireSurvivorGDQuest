extends CharacterBody2D

@export var player : CharacterBody2D

func _physics_process(delta):
	var arah = global_position.direction_to(player.global_position)
	velocity = arah * 250 
	move_and_slide()
	
func menerima_damage():
	pass
	
