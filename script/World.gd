extends Node2D

const Tile := preload("res://sprite/Tile.tscn")
const Player := preload("res://sprite/Player.tscn")

const CreateObject := preload("res://script/CreateObject.gd")

var _GroupName := preload("res://script/library/GroupName.gd").new()

var _ref_CreateObject: CreateObject

var ready_to_initialize: bool = false


func _on_PlayRoot_is_ready():
	_init_world()

	
func _init_world():
	#Create tiles
	for x in range(0, 7):
		for y in range(0, 7):
			if (x == 0 or x == 6) or (y == 0 or y == 6):
				_ref_CreateObject.create_sprite(Tile, _GroupName.TILE, x, y)
			
			if [x, y] == [3, 5]:
				_ref_CreateObject.create_sprite(Player, _GroupName.PLAYER, x, y)

			
