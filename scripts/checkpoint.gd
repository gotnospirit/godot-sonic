extends Node2D

var active = false
var animating = false

func _ready():
	get_node("body").connect("body_enter", self, "_hit")
	get_node("body/sprite").set_frame(0)

func set_active():
	active = true
	animating = false
	get_node("body/sprite").set_frame(1)

func _hit(body):
	if !active && !animating && body.is_in_group("hero"):
		animating = true
		get_node("animation").play("hit")
