extends DialogTree
class_name DefaultCat

func _init() -> void:
	state_table = {
		0: ['Hey, how are you doing?', ['I\'m doing good!', 1], ['I\'m doing bad!', 2], ['Goodbye', 3]],
		1: ['Thank you. Any questions?', ['Why are you so cool?', 4], ['No', 5]],
		# Next steps is filling this out
	}
