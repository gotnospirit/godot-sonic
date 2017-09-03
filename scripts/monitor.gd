extends Node2D

export(int, "Ring", "Invincibility", "Shield", "Shoe", "Life") var type

func _ready():
	get_node("body/item").set_frame(type)
