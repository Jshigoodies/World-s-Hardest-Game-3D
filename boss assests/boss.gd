extends Area

var health = 5

var velocity = Vector3.ZERO

signal playerHit
signal win

var rng = RandomNumberGenerator.new()
func _ready():
	$Timer.start()


func _on_r1_body_entered(body):
	if body.name == "Player":
		emit_signal("playerHit")


func _on_boss_body_entered(body):
	if body.name == "Player":
		health = health - 1
		$hit.play("hit")
	
	if health == 0:
		queue_free()
		emit_signal("win")
		


func _on_Timer_timeout():
	rng.randomize()
	var my_random_number = rng.randf_range(1, 7)
	var num = floor(my_random_number)
	
	
	if num == 1:
		$AnimationPlayer.play("attack1")
	elif num == 2:
		$AnimationPlayer.play("attack2")
	elif num == 3:
		$AnimationPlayer.play("attack3")
	elif num == 4:
		$AnimationPlayer.play("attack4")
	elif num == 5:
		$AnimationPlayer.play("attack5")
	elif num == 6:
		$AnimationPlayer.play("attack6")
	else:
		pass
