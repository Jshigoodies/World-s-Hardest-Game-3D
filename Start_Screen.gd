extends Control


func _ready():
	pass




func _on_Button_pressed():
	get_tree().change_scene("res://levels/Text_lvl1.tscn")


func _physics_process(delta):
	if Input.is_action_pressed("f") and Input.is_action_pressed("k"):
		get_tree().change_scene("res://assets/Test Level.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://assets/SpeedRun.tscn")
