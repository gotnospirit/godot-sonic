extends Node2D

onready var animation = get_node("animation")

func _ready():
	get_node("trigger").connect("body_enter", self, "_enter")

func _enter(body):
	if !animation.is_playing():
		animation.play("bumping")

		if body.has_method("bump"):
			body.bump()
