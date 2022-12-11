extends Spatial

var checkpoint = false

var coins = 4

signal reset_level

func _ready():
	pass


func _on_goal_body_entered(body):
	if body.name == "Player":
		if coins == 0:
			get_tree().change_scene("res://levels/Text_lvl7.tscn")


func _on_checkpoint_body_entered(body):
	if body.name == "Player":
		checkpoint = true


func _on_rotate_of_death_5_balls_diameter_player_hit():
	emit_signal("reset_level")
	coins = 4
	if checkpoint:
		$checkpoint.play("checkpoint_point")
	else:
		$respawn.play("repawn_point")


func _on_coin_coin_collect():
	coins = coins - 1
