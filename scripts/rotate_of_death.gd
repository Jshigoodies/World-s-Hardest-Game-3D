extends Spatial

signal player_hit

func _ready():
	pass

func _on_enemyBalls_body_entered(body):
	if body.name == "Player":
		emit_signal("player_hit")
