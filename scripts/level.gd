extends Node2D

var materials = {
	"Grayscale": load("res://materials/grayscale.tres"),
	"Invert": load("res://materials/invert.tres"),
	"Hurt": load("res://materials/hurt.tres"),
	"CRT stripes": load("res://materials/crt-stripes.tres"),
	"Pixelate": load("res://materials/pixelate.tres"),
}

func _ready() -> void:
		for label in materials.keys():
			$MenuBar/Effects.add_item(label)

func _on_effects_index_pressed(index: int) -> void:
	if index == 0:
		$Target.material = null
	else:
		$Target.material = materials.values()[index - 1]
