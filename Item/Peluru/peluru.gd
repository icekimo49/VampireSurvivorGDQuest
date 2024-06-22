extends Area2D

const KECEPATAN = 1000.0
const JARAK = 1200.0

var nilai_jarak_peluru = 0.0

func _physics_process(delta):
	var arah = Vector2.RIGHT.rotated(rotation)
	position += arah * KECEPATAN * delta
	nilai_jarak_peluru += delta * JARAK
	jarak_peluru()

func jarak_peluru():
	if nilai_jarak_peluru > JARAK :
		queue_free()
		 
func _on_body_entered(body):
	queue_free()
	if body.has_method("menerima_damage"):
		body.menerima_damage()
