extends Control


func _ready():
	$Timer.start()
	




func _on_Timer_timeout():
	get_tree().change_scene("res://levels/Level 7.tscn")
