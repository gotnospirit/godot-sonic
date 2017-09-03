extends Node2D

var active = false
var animating = false
export var final_frame = 1

func _ready():
	get_node("body").connect("body_enter", self, "_enter")
	get_node("body/sprite").set_frame(0)

func on_spin_end():
	active = true
	animating = false
	get_node("body/sprite").set_frame(final_frame)

func _enter(body):
	if !active && !animating && body.is_in_group("hero"):
		animating = true
		get_node("animation").play("spin")
