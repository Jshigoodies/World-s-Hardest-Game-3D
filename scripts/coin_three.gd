extends Area

signal coin_collect

func _ready():
	pass



func _on_coin_three_body_entered(body):
	if body.name == "Player":
		emit_signal("coin_collect")
		self.visible = false
		$CollisionShape.disabled = true


func _on_Test_Level_reset_level():
	self.visible = true
	$CollisionShape.disabled = false
