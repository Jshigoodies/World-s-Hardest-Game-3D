extends Spatial


func _ready():
	pass



func _on_enemyBalls1_body_entered(body):
	if body.name == "Player":
		$respawn_point.play("respawn")
		
