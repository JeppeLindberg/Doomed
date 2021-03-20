extends Node2D

var _new_GroupName := preload("res://script/library/GroupName.gd").new()

var _pc: Sprite


func _on_Schedule_turn_started(current_sprite: Sprite) -> void:
	if current_sprite.is_in_group(_new_GroupName.PLAYER):
		print("Player turn started")
		set_process_unhandled_input(true)

	
func _on_CreateObject_sprite_created(new_sprite: Sprite) -> void:
	if new_sprite.is_in_group(_new_GroupName.PLAYER):
		_pc = new_sprite

