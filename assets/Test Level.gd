extends Spatial


func _ready():
	pass



func _on_enemyBalls1_body_entered(body):
	if body.name == "Player":
		$respawn_point.play("respawn")
		


func _on_safe_area_body_entered(body):
	if body.name == "Player":
		print("Winner")


func _on_rotate_of_death_player_hit():
	$respawn_point.play("respawn")
