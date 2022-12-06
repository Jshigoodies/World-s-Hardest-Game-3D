extends Spatial

signal reset_level
var coins = 1

func _ready():
	pass



func _on_enemyBalls_body_entered(body):
	if body.name == "Player":
		emit_signal("reset_level")
		$respawn.play("respawn_point")
		coins = 1


func _on_goal_body_entered(body):
	if body.name == "Player":
		if coins == 0:
			print("Winner")


func _on_coin_coin_collect():
	coins = coins - 1
