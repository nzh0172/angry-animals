extends RigidBody2D

@onready var label: Label = $"../Label"


func _process(_delta: float) -> void:
	label.text = "Freeze: %s\nContactCount: %s\nSleeping: %s" % [
		freeze, get_contact_count(), sleeping
	]

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("unfreeze"):
		freeze = true if !freeze else false
	if event.is_action_pressed("impulse"):
		apply_central_impulse(Vector2(200,-1000))
	if event.is_action_pressed("left_impulse"):
		apply_central_impulse(Vector2(-200,1000))

'''
Impulse forces (one-shot, only applies once)
- Linear
- Angular

Constant force



'''

		
	
 
