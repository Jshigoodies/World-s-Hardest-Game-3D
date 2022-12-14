extends Spatial

signal gotta_go_fast

func _ready():
	emit_signal("gotta_go_fast")

	
	


func _on_boss_playerHit():
	get_tree().change_scene("res://levels/Start_Screen.tscn")


func _on_boss_win():
	$Timer.start()


func _on_Timer_timeout():
	get_tree().change_scene("res://levels/winner for secret.tscn")
