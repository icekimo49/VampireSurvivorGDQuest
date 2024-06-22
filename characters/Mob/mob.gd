extends CharacterBody2D

var nyawa = 4

@export var player : CharacterBody2D

func _ready():
	player = get_tree().get_first_node_in_group("Player")
	%Slime.play_walk()

func _physics_process(delta):
	if !player:
		return
	var arah = global_position.direction_to(player.global_position)
	velocity = arah * 250 
	move_and_slide()
	
func menerima_damage():
	nyawa -= 1
	%Slime.play_hurt()
	
	if nyawa <= 0:
		const ASEP = preload("res://smoke_explosion/smoke_explosion.tscn")
		var new_asep = ASEP.instantiate()
		new_asep.global_position = global_position
		get_parent().add_child(new_asep)
		queue_free()
		
	
