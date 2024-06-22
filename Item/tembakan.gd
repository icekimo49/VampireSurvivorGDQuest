extends Area2D

func _physics_process(delta):
	var musuh_di_area = get_overlapping_bodies()
	if musuh_di_area.size() > 0:
		var target = musuh_di_area[0]
		look_at(target.global_position)
		
func _on_timer_timeout():
	const PELURU = preload("res://Item/Peluru/peluru.tscn")
	var new_peluru = PELURU.instantiate()
	new_peluru.global_position = %UjungPistol.global_position
	new_peluru.global_rotation = %UjungPistol.global_rotation
	%UjungPistol.add_child(new_peluru)
	
