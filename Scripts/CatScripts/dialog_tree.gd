extends Node
class_name DialogTree

var state_table : Dictionary
var current_state : int = 0

# For current state, get next state based on button_pressed
func get_next(button_pressed: int) -> Array:
	var next_state = state_table[current_state][button_pressed+1][1]
	return state_table[next_state]
