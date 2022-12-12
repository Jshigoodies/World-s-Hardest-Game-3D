extends Spatial


func _ready():
	pass


func _on_boss_body_entered(body):
	if body.name == "Player":
		$hit.play("hit")

func _physics_process(delta):
	pass
	
	# add a rng
	
	# depending on rng it attacks in a certain way
	
	# after rng attack
	
	# go to idle animation
