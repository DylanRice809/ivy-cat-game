extends DialogTree
class_name DefaultCat

func _init() -> void:
	state_table = {
		0: ['Hey, how are you doing?', ['I\'m doing good!', 1], ['I\'m doing bad!', 2], ['Goodbye', 100]],
		1: ['Thank you. Any questions?', ['Why are you so cool?', 4], ['No', 5]],
		2: ['I\'m sorry to hear that, do you want to talk about it?', ['Please', 1], ['No thank you', 3]],
		3: ['Okay then', ['Goodbye', 100]],
		4: ['It is easy for someone like me', ['This is true', 1], ['How dare you!', 5]],
		5: ['Leave.', ['Hold on...', 100], ['Okay', 100]],

		100: ['EXIT']
	}
