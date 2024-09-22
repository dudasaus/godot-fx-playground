extends Node2D

var materials = {
	"grayscale": load("res://materials/grayscale.tres"),
	"invert": load("res://materials/invert.tres"),
	"hurt": load("res://materials/hurt.tres"),
	"crt-stripes": load("res://materials/crt-stripes.tres"),
}

func _init() -> void:
	print(materials)

func _on_effects_index_pressed(index: int) -> void:
	if index == 0:
		$Target.material = null
	else:
		$Target.material = materials.values()[index - 1]
