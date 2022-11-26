extends Area


func _ready():
	pass


func _on_enemyBalls1_body_entered(body):
	if body.name == "Player":
		print("hit")

