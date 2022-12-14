extends KinematicBody

var velocity = Vector3(0, 0, 0)
var SPEED = 360

func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_pressed("d_key") and Input.is_action_pressed("a_key"):
		velocity.x = 0 * delta
	elif Input.is_action_pressed("d_key"):
		velocity.x = SPEED * delta
	elif Input.is_action_pressed("a_key"):
		velocity.x = -SPEED * delta
	else:
		velocity.x = lerp(velocity.x, 0, 0.5)
	
	if Input.is_action_pressed("w_key") and Input.is_action_pressed("s_key"):
		velocity.z = 0 * delta
	elif Input.is_action_pressed("w_key"):
		velocity.z = -SPEED * delta
	elif Input.is_action_pressed("s_key"):
		velocity.z = SPEED * delta
	else:
		velocity.z = lerp(velocity.z, 0, 0.5)
	
	move_and_slide(velocity)


func _on_BOSS_LEVEL_gotta_go_fast():
	SPEED = 1000
