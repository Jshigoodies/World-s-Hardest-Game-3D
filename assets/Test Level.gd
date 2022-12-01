extends Spatial

signal reset_level
var checkpoint = false;
var coins = 3 #how many coins should be on this level
func _ready():
	pass


# if player touches blue ball
func _on_enemyBalls1_body_entered(body):
	if body.name == "Player":
		if checkpoint == false:
			$respawn_point.play("respawn")
		else:
			$respawn_point.play("checkpoint")
			
		emit_signal("reset_level")
		
		coins = 3
		

# check point
func _on_safe_area_body_entered(body):
	if body.name == "Player":
		if coins == 0:
			get_tree().change_scene("res://assets/Game_Win_Test.tscn")

# if player touches windmill blue balls
func _on_rotate_of_death_player_hit():
	if checkpoint == false:
		$respawn_point.play("respawn")
	else:
		$respawn_point.play("checkpoint")
		
	emit_signal("reset_level")
	
	coins = 3


func _on_coin_coin_collect():
	coins = coins - 1 # collected one


func _on_checkpoint_area_body_entered(body):
	if body.name == "Player":
		checkpoint = true
