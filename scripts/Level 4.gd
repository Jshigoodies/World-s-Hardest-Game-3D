extends Spatial

var coins = 3

signal reset_level

func _ready():
	pass


func _on_rotate_of_death_BIG_player_hit():
	emit_signal("reset_level")
	coins = 3
	$respawn.play("respawn_point")


func _on_coin_coin_collect():
	coins = coins - 1


func _on_Area_body_entered(body):
	if coins == 0 and body.name == "Player":
		get_tree().change_scene("res://levels/Text_lvl5.tscn")
