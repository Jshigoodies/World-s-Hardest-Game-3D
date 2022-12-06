extends Spatial

signal reset_level

func _ready():
	pass
	

func reset_level():
	$respawn.play("respawn_point")

#goal
func _on_goal_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://levels/Text_lvl2.tscn")


func _on_enemyBalls_body_entered(body):
	if body.name == "Player":
		reset_level()
