extends Node2D

signal cat_clicked

@onready var button: Button = $Button
var dialog_box_preload = preload("res://Nodes/dialog_box.tscn")

func _ready():
	var children = get_children()
	for child in children:
		var child_button = child.get_child(0)
		child_button.pressed.connect(func(): _on_cat_clicked(child_button))

func _on_cat_clicked(button: Button):
	var dialog = dialog_box_preload.instantiate()
	add_child(dialog)
	emit_signal("cat_clicked")
