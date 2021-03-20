extends Node2D

var __

signal is_ready()


func _ready():
	__ = connect("is_ready", get_node("World"), "_on_PlayRoot_is_ready")
	__ = connect("is_ready", get_node("Schedule"), "_on_PlayRoot_is_ready")
	
	__ = get_node("CreateObject").connect("sprite_created", get_node("Schedule"), "_on_CreateObject_sprite_created")
	__ = get_node("CreateObject").connect("sprite_created", get_node("Player"), "_on_CreateObject_sprite_created")

	__ = get_node("Schedule").connect("turn_started", get_node("Player"), "_on_Schedule_turn_started")

	get_node("World")._ref_CreateObject = get_node("CreateObject")

	emit_signal("is_ready")
