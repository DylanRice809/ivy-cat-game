extends Node
class_name Cat

var cat_name : String
var stats : Dictionary

var sprite : Image

var dialog_tree : DialogTree

func _init() -> void:
	pass

# Responsible for triggering movement
func _physics_process(delta: float) -> void:
	pass

func move(distance: Vector2):
	pass
