extends Node

var response_buttons : Array
var user_input : int

signal button_pressed

func _ready() -> void:
	var cat = Cat.new()
	var cat_tree = DefaultCat.new()
	cat.dialog_tree = cat_tree
	on_cat_chosen(cat)

func on_cat_chosen(cat: Cat):
	# Gets initial value of state table
	var current_output = cat.dialog_tree.state_table[0]
	instantiate_buttons(current_output)
	
	# EXIT is stop code
	while current_output[0] != "EXIT":
		await button_pressed
		current_output = cat.dialog_tree.get_next(user_input)
		instantiate_buttons(current_output)

func instantiate_buttons(current_output):
	if current_output[0] != "EXIT":
		get_node("Background/Question").text = current_output[0]
		var answers = get_node("Background/Answers")
		
		# Remove existing children
		for n in answers.get_children():
			answers.remove_child(n)
			n.queue_free()
		
		for i in range(1, len(current_output)):
			# For rest of current_output, create a button, then assign value
			var button = Button.new()
			button.text = current_output[i][0]
			button.pressed.connect(func(): _on_button_pressed(button))
			response_buttons.append(button)
			answers.add_child(button)
	else:
		return

func _on_button_pressed(button: Button):
	for i in range(len(response_buttons)):
		if response_buttons[i] == button:
			user_input = i
	emit_signal("button_pressed")
