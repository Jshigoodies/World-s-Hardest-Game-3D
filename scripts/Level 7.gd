extends Spatial

var coins = 4
signal reset_level

func _ready():
	pass


func _on_goal_body_entered(body):
	if body.name == "Player":
		if coins == 0:
			get_tree().change_scene("res://levels/End.tscn")


func _on_enemyBalls_body_entered(body):
	if body.name == "Player":
		emit_signal("reset_level")
		$respawn.play("respawn_point")
		coins = 4
	


func _on_coin_coin_collect():
	coins = coins - 1
