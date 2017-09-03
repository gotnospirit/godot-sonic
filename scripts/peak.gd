extends Node2D

func _ready():
	get_node("trigger").connect("body_enter", self, "_enter")

func _enter(body):
	if body.is_in_group("hero") && body.has_method("peak"):
		body.peak()