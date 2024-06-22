extends CharacterBody2D

signal player_mati

var darah = 100.0 
const DAMAGE = 5.0

@onready var happy_boo = $HappyBoo

func _physics_process(delta):
	var arah = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = arah * 500
	move_and_slide()
	
	if velocity.length() > 0.0:
		happy_boo.play_walk_animation()
	elif velocity.length()== 0.0 :
		happy_boo.play_idle_animation()
		
	%DarahBar.value = darah
	var musuh_yang_menempel = %HurtBox.get_overlapping_bodies()
	darah -= musuh_yang_menempel.size() * DAMAGE * delta
	
	if darah <= 0:
		player_mati.emit()

