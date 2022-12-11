extends Spatial

var checkpointOne = false
var checkpointTwo = false

func _ready():
	$respawn.play("respawn_point")




func _on_checkpoint1_body_entered(body):
	if body.name == "Player":
		checkpointOne = true


func _on_checkpoint2_body_entered(body):
	if body.name == "Player":
		checkpointTwo = true


func _on_goal_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://levels/Text_lvl6.tscn")


func _on_rotate_of_death_spaced_out_player_hit():
	if checkpointTwo:
		$checkpointTwo.play("checkpoint_2")
	elif checkpointOne:
		$checkpointOne.play("checkpoint_1")
	else:
		$respawn.play("respawn_point")
