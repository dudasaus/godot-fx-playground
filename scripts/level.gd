extends Node2D

var materials = {
	"grayscale": load("res://materials/grayscale.tres")
}

func _init() -> void:
	print(materials)

func _on_effects_index_pressed(index: int) -> void:
	if index == 0:
		$Target.material = null
	elif index == 1:
		$Target.material = materials["grayscale"]
