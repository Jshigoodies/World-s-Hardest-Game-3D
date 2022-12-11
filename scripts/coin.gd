extends Area

signal coin_collect

func _ready():
	pass



func _on_coin_body_entered(body):
	if body.name == "Player":
		emit_signal("coin_collect")
		self.visible = false
		$CollisionShape.disabled = true
# levels
func _on_Test_Level_reset_level():
	$Timer.start() 
	# the player touches the instant the coin 
	# jumps back in. so it disappears again. That is why i need a timer


func _on_Timer_timeout():
	$Timer.stop()
	self.visible = true
	$CollisionShape.disabled = false


func _on_Level_2_reset_level():
	$Timer.start()


func _on_Level_3_reset_level():
	$Timer.start()


func _on_Level_4_reset_level():
	$Timer.start()


func _on_Level_6_reset_level():
	$Timer.start()
