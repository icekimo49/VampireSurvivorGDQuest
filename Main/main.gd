extends Node2D

var kalah : bool

func _ready():
	kalah = false
	pass
	
func spawn_mob():
	var new_mob = preload("res://characters/Mob/mob.tscn").instantiate()
	%lokasiSpawn.progress_ratio = randf()
	new_mob.global_position = %lokasiSpawn.global_position
	add_child(new_mob)

func _on_timer_timeout():
	spawn_mob()
	%TimerSpawn.wait_time = randf()

func _on_player_player_mati():
	%GameOver.visible = true
	kalah = true

func _on_button_pressed():
	if !kalah :
		return
	get_tree().reload_current_scene()
	
